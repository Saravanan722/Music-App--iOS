//
//  EndPoints.swift
//  InfinityMusic
//
//  Created by Saravanan T on 20/11/24.
//

import Foundation

enum EndPoints {
    static let baseUrl = "https://apidemo24.innocrux.com/api/"

    static let deviceInfo = baseUrl + "users/devices"
    static let activateDevice = baseUrl + "users/activate/device"
    static let deactivateDevice = baseUrl + "users/devices/deactivate"

    static let login = baseUrl + "users/signin"
    static let requestRegisterOTP = baseUrl + "users/signin/otp"

    static let profile = baseUrl + "users/profiles"
    static let selectProfile = baseUrl + "users/profiles/select"
    static let profileIcons = baseUrl + "users/profile/icons"
    static let parentProile = baseUrl + "users/profiles/parental"
    static let deleteAccount = profile
    static let uploadMediaFile = baseUrl + "media/upload/profile"
    static let completeRegistration = baseUrl + "users/signin/otp/validate"
    static let resendOtp = baseUrl + "users/signin/otp/resend"

    static let userPlan = baseUrl + "users/plans"
    static let userPayments = baseUrl + "users/plans/payments"

    static let downloadFile = baseUrl + "media/download?mediaId=%@&ft=%@"

    static let userDetails = baseUrl + "users/details"

    static let userSocialMediaLink = baseUrl + "users/settings/page"

    static let audio = baseUrl + "audios/contents/HomePage"
    static let audioLayout = baseUrl + "audios/layouts"
    static let audioDetail = baseUrl + "audios/contents/details"
    static let audioTrack = baseUrl + "audios/tracks"
    static let searchMusic = baseUrl + "audios/contents/search"
    static let castAudio = baseUrl + "audios/c"
    static let audiosPlaylist = baseUrl + "audios/playlist"
    static let mylibary =  baseUrl + "audios/my/library"
    static let castList = baseUrl + "audios/casts/ids"
}
