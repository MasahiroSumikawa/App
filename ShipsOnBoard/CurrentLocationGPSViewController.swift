//
//  CurrentLocationGPSViewController.swift
//  ShipsOnBoard
//
//  Created by clark on 2022/10/25.
//
//latitude：緯度
//longitude：経度

import UIKit
import CoreLocation
import MapKit
import Accounts
import AudioToolbox

class CurrentLocationGPSViewController: UIViewController, CLLocationManagerDelegate {
    
    
//    @IBOutlet weak var share: UIBarButtonItem!
    @IBOutlet weak var VerticalChanging: UIStackView!
    @IBOutlet weak var HorizontalChanging: UIStackView!
    @IBOutlet weak var ChangingMap: UIStackView!
    @IBOutlet weak var ChangeMap: UILabel!
    @IBOutlet weak var VerticalMapType: UIStackView!
    @IBOutlet weak var MapType: UIStackView!
    @IBOutlet weak var Standard: UIButton!
    @IBOutlet weak var Satellite: UIButton!
    @IBOutlet weak var LocationMap: MKMapView!
    @IBOutlet weak var BacktoCurrentLoc: UIButton!
    @IBOutlet weak var LocationInformationStack: UIStackView!
    @IBOutlet weak var AdressStack: UIStackView!
    @IBOutlet weak var HedingSpeedStack: UIStackView!
    @IBOutlet weak var speeds: UILabel!
    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var LastUpdateTime: UILabel!
    @IBOutlet weak var LatitudeLongitudeStack: UIStackView!
    @IBOutlet weak var Latitude: UILabel!
    @IBOutlet weak var Longitude: UILabel!
    var locationManager = CLLocationManager()
    var trueHeading = CLLocationDirection()
    var beforeLocationP: Point = Point(x: 0, y:0)
    var currentLocationP: Point = Point(x: 0, y:0)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        VerticalChanging.layer.borderWidth = 5.0
        VerticalChanging.layer.borderColor = UIColor.gray.cgColor
        VerticalChanging.layer.cornerRadius = 15.0
        
        Standard.layer.borderWidth = 1.5
        Standard.layer.borderColor = UIColor.green.cgColor
        Standard.layer.cornerRadius = 10.0
        Standard.setTitleColor(UIColor.green, for: .normal)
        
        Satellite.layer.borderWidth = 1.5
        Satellite.layer.borderColor = UIColor.gray.cgColor
        Satellite.layer.cornerRadius = 10.0
        Satellite.setTitleColor(UIColor.gray, for: .normal)
        
        LocationMap.layer.borderWidth = 7.0
        LocationMap.layer.borderColor = UIColor.gray.cgColor
        LocationMap.layer.cornerRadius = 15.0
        LocationMap.mapType = .standard
        
        BacktoCurrentLoc.layer.borderWidth = 4
        BacktoCurrentLoc.layer.borderColor = UIColor.lightGray.cgColor
        BacktoCurrentLoc.layer.cornerRadius = 22.5
        
        LocationInformationStack.layer.borderWidth = 5.0
        LocationInformationStack.layer.borderColor = UIColor.gray.cgColor
        LocationInformationStack.layer.cornerRadius = 10.0
        
        speeds.layer.borderWidth = 2.0
        speeds.layer.borderColor = UIColor.gray.cgColor
        speeds.layer.cornerRadius = 7.0
        heading.layer.borderWidth = 2.0
        heading.layer.borderColor = UIColor.gray.cgColor
        heading.layer.cornerRadius = 7.0
        
        LastUpdateTime.layer.borderWidth = 2.0
        LastUpdateTime.layer.borderColor = UIColor.gray.cgColor
        LastUpdateTime.layer.cornerRadius = 7.0
        
        LatitudeLongitudeStack.layer.borderWidth = 2.0
        LatitudeLongitudeStack.layer.borderColor = UIColor.gray.cgColor
        LatitudeLongitudeStack.layer.cornerRadius = 7.0
        locationManager = CLLocationManager()
        locationManager.delegate = self// 自身をデリゲートプロパティに設定
        LocationMap.frame = view.bounds
        locationManager.requestWhenInUseAuthorization()// 位置情報を利用許可をリクエスト
        locationManager.desiredAccuracy = kCLLocationAccuracyBest// 最高精度の位置情報を要求
//        locationManager.distanceFilter = 0.0// 更新距離(m)
        locationManager.headingOrientation = .portrait
        locationManager.startUpdatingLocation()//位置情報のアップデートを開始
        locationManager.startUpdatingHeading()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        back()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let latitude = (locations.last?.coordinate.latitude.description)!
        let longitude = (locations.last?.coordinate.longitude.description)!
        beforeLocationP.x = currentLocationP.x
        beforeLocationP.y = currentLocationP.y
        currentLocationP.x = Double(latitude)!
        currentLocationP.y = Double(longitude)!
        heading.text = String(angle(a: beforeLocationP, b: currentLocationP)) + "°"
        //           緯度を10進法から60進法に変換
        //緯度の°の部分
        let latitudeDeg = floor(Float(latitude)!)
        //緯度の'の部分
        let latitudeMin = floor(Float(Float(latitude)! - floor(Float(latitude)!)) * 60)
        //緯度の"の部分
        let latitudeSec = Float(Float(Float(latitude)! - floor(Float(latitude)!)) - Float(Float(latitudeMin) / 60)) * 3600
        //           経度を10進法から60進法に変換
        //経度の°の部分
        let longitudeDeg = floor(Float(longitude)!)
        //経度の'の部分
        let longitudeMin = floor(Float(Float(longitude)! - floor(Float(longitude)!)) * 60)
        //経度の"の部分
        let longitudeSec = Float(Float(Float(longitude)! - floor(Float(longitude)!)) - Float(Float(longitudeMin) / 60)) * 3600
        
        if Float(latitude)! >= 0 && Float(longitude)! >= 0 {
            //            北緯＋東経
            //            緯度(60進法)をlabel(latitude.label)に表示
            Latitude.text = String(Int(latitudeDeg)) + "° " + String(Int(latitudeMin)) + "' " + String(format: "%.3f", latitudeSec) + "''" + " N"
            //            経度(60進法)をlabel(longitude.label)に表示
            Longitude.text = String(Int(longitudeDeg)) + "° " + String(Int(longitudeMin)) + "' " + String(format: "%.3f", longitudeSec) + "''" + " E"
        }else if Float(latitude)! >= 0 && Float(longitude)! < 0 {
            //            北緯＋西経
            let longitudeWA = Float(longitudeDeg) * -1
            Latitude.text = String(Int(latitudeDeg)) + "° " + String(Int(latitudeMin)) + "' " + String(format: "%.3f", latitudeSec) + "''" + " N"
            Longitude.text = String(Int(longitudeWA)) + "° " + String(Int(longitudeMin)) + "' " + String(format: "%.3f", longitudeSec) + "''" + " W"
        }else if Float(latitude)! < 0 && Float(longitude)! >= 0 {
            //            南緯＋東経
            let latitudeSA = Float(latitudeDeg) * -1
            Latitude.text = String(Int(latitudeSA)) + "° " + String(Int(latitudeMin)) + "' " + String(format: "%.3f", latitudeSec) + "''" + " S"
            Longitude.text = String(Int(longitudeDeg)) + "° " + String(Int(longitudeMin)) + "' " + String(format: "%.3f", longitudeSec) + "''" + " E"
        }else if Float(latitude)! < 0 && Float(longitude)! < 0 {
            //            南緯＋西経
            let latitudeSB = Float(latitudeDeg) * -1
            let longitudeWB = Float(longitudeDeg) * -1
            Latitude.text = String(Int(latitudeSB)) + "° " + String(Int(latitudeMin)) + "' " + String(format: "%.3f", latitudeSec) + "''" + " S"
            Longitude.text = String(Int(longitudeWB)) + "° " + String(Int(longitudeMin)) + "' " + String(format: "%.3f", longitudeSec) + "''" + " W"
        }
        
        
        
        let dt = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yMMMdHms", options: 0, locale: Locale(identifier: "ja_JP"))
        LastUpdateTime.text = "最終更新時刻：" + dateFormatter.string(from: dt)
        guard let newLocation = locations.last,CLLocationCoordinate2DIsValid(newLocation.coordinate) else {
            speeds.text = "ERROR"
            return
        }
        
        if Float(newLocation.speed) < 0 {
            speeds.text = "Speed:unknown"
        }else if Float(newLocation.speed) >= 0 {
            self.speeds.text = "".appendingFormat("%.2f", newLocation.speed * 1.852) + "kts"
        }
        let coordinates: [CLLocationCoordinate2D] = [
            CLLocationCoordinate2D(latitude: beforeLocationP.x, longitude: beforeLocationP.y),
            CLLocationCoordinate2D(latitude: Double(latitude)!, longitude: Double(longitude)!),
                    ]
        let polyline = MKPolyline(coordinates: coordinates, count: coordinates.count)
        LocationMap.addOverlay(polyline)
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
    if let polyline = overlay as? MKPolyline {
    let polylineRenderer = MKPolylineRenderer(polyline: polyline)
                polylineRenderer.strokeColor = .blue
                polylineRenderer.lineWidth = 2.0
    return polylineRenderer
            }
    return MKOverlayRenderer()
        }
    
    struct Point {
        var x:Double = 0
        var y:Double = 0
    }
    func angle(a:Point, b:Point) -> Double {
        var r = atan2(b.y - a.y, b.x - a.x)
        if r < 0 {
            r = r + 2 * M_PI
        }
        return floor(r * 360 / (2 * M_PI))
    }
    
    func back(){
        var region:MKCoordinateRegion = LocationMap.region
        region.center = LocationMap.userLocation.coordinate
        region.span.latitudeDelta = 0.02
        region.span.longitudeDelta = 0.02
        LocationMap.setRegion(region,animated:true)
        AudioServicesPlaySystemSound(1102)
    }
    
    
    
    @IBAction func StandardMap(_ sender: Any) {
        LocationMap.mapType = .standard
        Standard.layer.borderColor = UIColor.green.cgColor
        Standard.setTitleColor(UIColor.green, for: .normal)
        Satellite.layer.borderColor = UIColor.gray.cgColor
        Satellite.setTitleColor(UIColor.gray, for: .normal)
    }
    
    @IBAction func SatelliteMap(_ sender: Any) {
        LocationMap.mapType = .hybridFlyover
        Standard.layer.borderColor = UIColor.gray.cgColor
        Standard.setTitleColor(UIColor.gray, for: .normal)
        Satellite.layer.borderColor = UIColor.green.cgColor
        Satellite.setTitleColor(UIColor.green, for: .normal)
    }
    
    
    @IBAction func BackCurrentLoc(_ sender: Any) {
        back()
    }
    
//    @IBAction func Share(sender: UIButton) {
//        let shareText = "私は" + Latitude.text! + "," + Longitude.text! + "を" + speeds.text! + "で進んでいます。"
//        let shareWebsite = URL(string: "https://lit.link/obakechan")!
//        let shareImage = UIImage(named: "UWIcon2.jpg")!
//        let activityItems = [shareText, shareWebsite, shareImage] as [Any]
//        let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
//        self.present(activityVC, animated: true, completion: nil)
//    }
    
    
    
    //    func NowLoc(locations: [CLLocation]) {
////        let latitude = (locations.last?.coordinate.latitude.description)!
////        let longitude = (locations.last?.coordinate.longitude.description)!
//        let MyLoc = locations.last! as CLLocation
//        let myLocCurrent = MyLoc.coordinate
//        let DefaultSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
//        let DeaultRegion = MKCoordinateRegion(center: myLocCurrent, span: DefaultSpan)
//        LocationMap.setRegion(DeaultRegion, animated: true)
//
////        LocationMap.setCenterCoordinate(LocationMap.userLocation.coordinate, animated: true)
//    }
}
