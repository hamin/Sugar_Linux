//
//  Int+FileSize.swift
//  Video Player
//
//  Created by 朱文杰 on 15/11/2.
//  Copyright © 2015年 Home. All rights reserved.
//

@available(iOS 7.0, OSX 10.9, *)
public extension Int {
    /// Convert size number into human readable size string. Largest size unit is `GB`.
    var fileSizeString: String {
        var str = ""
        if self > 1.gb {
            str = String(format: "%.1f GB", arguments: [Double(self) / Double(1.gb)])
        }
        else if self > 1.mb {
            str = String(format: "%.1f MB", arguments: [Double(self) / Double(1.mb)])
        }
        else if self > 1.kb {
            str = String(format: "%.1f KB", arguments: [Double(self) / Double(1.kb)])
        }
        else {
            str = String(format: "%.1f B", arguments: [Double(self)])
        }
        return str
    }
}

public extension CLongLong {
    /// GB in Int64.
    var gb: CLongLong {
        return self * 1073741824 // 1024 x 1024 x 1024
    }

    /// MB in Int64.
    var mb: CLongLong {
        return self * 1048576 // 1024 x 1024
    }

    /// KB in Int64.
    var kb: CLongLong {
        return self * 1024
    }

    /// Convert size number into human readable size string. Largest size unit is `GB`.
    var fileSizeString: String {
        var str = ""
        if self > CLongLong(1.gb) {
            str = String(format: "%.1f GB", arguments: [Double(self) / Double(1.gb)])
        }
        else if self > CLongLong(1.mb) {
            str = String(format: "%.1f MB", arguments: [Double(self) / Double(1.mb)])
        }
        else if self > CLongLong(1.kb) {
            str = String(format: "%.1f KB", arguments: [Double(self) / Double(1.kb)])
        }
        else {
            str = String(format: "%.1f B", arguments: [Double(self)])
        }
        return str
    }
}
