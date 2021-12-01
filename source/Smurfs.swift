//
//  Smurfs.swift
//  Smurfs (iOS)
//
//  Created by 徐振 on 2021/12/1.
//

import Foundation
import CoreBluetooth

public enum AuthiruzationState {
    case unauthorized, restricted, denied, allowedAlways
}

public enum State {
    case poweredOff, poweredOn, resetting, scanning, connecting, unknown
}

public typealias authiruzationResult = (AuthiruzationState)-> Void
public typealias bluetoothStateResult = (State)-> Void
public typealias connectPeripheralResult =(Result<Void, Error>)-> Void

public class Source {
    
    /// 请求蓝牙收取 已经获取蓝牙授权后会直接返回授权结果，获取蓝牙收取系统并没有相应的授权方法。iOS13之后才有这里做封装统一处理。
    /// 获取的授权结果
    /// - Parameter complete: 返回授权结果
    static func requestAuthorization(_ complete:authiruzationResult?) {
        
    }
    
    /// 异步返回当前蓝牙的状态，会多次回调。用于坚挺蓝牙状态回调
    /// - Parameter complete: 返回蓝牙状态
    static func asyncState(_ complete:bluetoothStateResult?) {
        
    }
    
    /// 扫描设备
    static func scanForPeripherals() {
        
    }
    
    /// 停止扫描
    static func scanStop() {
        
    }
    
    /// 连接设备
    /// - Parameters:
    ///   - peripheral: 外设对象
    ///   - timeout: 连接超时
    ///   - completion: 返回连接结果
    static func connect(_ peripheral:CBPeripheral, timeout:TimeInterval = 15, completion:connectPeripheralResult?) {
        
    }
    
    /// 断开设备连接
    /// - Parameters:
    ///   - peripheral: 外设对象
    ///   - completion: 断开连接结果
    static func disconnect(_ peripheral:CBPeripheral, timeout:TimeInterval = 15, completion:ComparisonResult?) {
        
    }
    
    /// 断开所有连接
    /// - Parameter completion: 返回结果
    static func disconnectAll(completion:ComparisonResult?) {
        
    }
    
}
