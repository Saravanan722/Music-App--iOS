
//
//  HomeViewModel.swift
//  InfinityMusic
//
//  Created by Saravanan T on 18/10/24.
//

import Foundation

final class HomeViewModel: ObservableObject {
    @Published var layout = ["Album", "Music", "Podcasts"]
    @Published var layoutHome = [LayoutInfo]()
    
    init() {
        layoutHome = [
            .init(
                layoutSectionId: "dc5b30175a694803a10a1df60a3365af",
                customerId: 2,
                layoutId: "e9bfcf45c0ce4355abb64c65015dced8",
                layoutName: "Banner",
                layoutType: "HomePage",
                type: "",
                sectionType: .banner,
                sectionOrder: 1,
                layoutMode: "Manual",
                contents: [
                    .init(
                        contentType: "album",
                        track: .init(
                            id: "",
                            contentId: "",
                            lyrics: "",
                            md1: .init(
                                castId:  "",
                                castName: ""
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 0,
                            contentName: "",
                            albumId: "",
                            albumName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2:[.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(),
                            singers: [ .init(
                                castId:  "",
                                castName: ""
                            )],
                            lyricist: [ .init(
                                castId:  "",
                                castName: ""
                            )],
                            description: "",
                            feed: "",
                            myList: false
                        ),
                        album: .init(
                            id:  "6713b4c9ecb0223d4816f4cd",
                            contentId: "a381125926ff44de87a313575a0f6a66",
                            customerId: 2,
                            albumType: "null",
                            contentName:  "Beyonce Halo",
                            isPremium: false,
                            contentType: "album",
                            albumImages1:  [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 0,
                            releasedAt: "2024-10-19",
                            languages: .init(
                                languageId: "260a6ae3d009403ca0ede4a4da2f6a20",
                                languageName: "English",
                                localName: "null",
                                imageId: "null"
                            ),
                            md1: .init(
                                castId:  "e87a3bff9d9e42f7bd62918044227931",
                                castName: "Beyoncé"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "\"Halo\" is a song recorded by American singer and songwriter Beyoncé for her third studio album, I Am... Sasha Fierce (2008). Included on the I Am... disc, it was intended to give a behind-the-scenes glimpse of Beyoncé's life, stripped of her make-up and celebrity trappings.",
                            tracksCount: 1,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "album",
                        track: .init(
                            id: "",
                            contentId: "",
                            lyrics: "",
                            md1: .init(
                                castId:  "",
                                castName: ""
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 0,
                            contentName: "",
                            albumId: "",
                            albumName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1:[.init(imageUrl: "", imageType: "")],
                            albumImages2:[.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(),
                            singers: [ .init(
                                castId:  "",
                                castName: ""
                            )],
                            lyricist: [ .init(
                                castId:  "",
                                castName: ""
                            )],
                            description: "",
                            feed: "",
                            myList: false
                        ),
                        album:.init(
                            id:  "671200a1ecb0223d4816f48b",
                            contentId: "433410b15bdd48e28f7d5eb587015205",
                            customerId: 2,
                            albumType: "",
                            contentName:  "Remo",
                            isPremium: false,
                            contentType: "album",
                            albumImages1:  [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300f",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 1486,
                            releasedAt: "2016-10-07",
                            languages: .init(
                                languageId: "378dde8df0d84e95b6f50c2b05a380a5",
                                languageName: "Tamil",
                                localName: "",
                                imageId: ""
                            ),
                            md1: .init(
                                castId:  "811ff6af3de34ef599f634339a814226",
                                castName: "Anirudh Ravichander"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            productionHouse: .init(
                                productionHouseId: "80c273bdfe9942aba22d7ac3f55c943b",
                                productionHouseName: "24AM Studios",
                                bannerImage: ""
                            ),
                            description: "Remo (2016) is a Tamil romantic comedy film starring Sivakarthikeyan and Keerthy Suresh, directed by Bakkiyaraj Kannan. The story follows an aspiring actor who disguises himself as a female nurse to win over the woman he loves.",
                            tracksCount: 6,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "album",
                        track: .init(
                            id: "",
                            contentId: "",
                            lyrics: "",
                            md1: .init(
                                castId:  "",
                                castName: ""
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 0,
                            contentName: "",
                            albumId: "",
                            albumName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1:[.init(imageUrl: "", imageType: "")],
                            albumImages2:[.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(),
                            singers: [ .init(
                                castId:  "",
                                castName: ""
                            )],
                            lyricist: [ .init(
                                castId:  "",
                                castName: ""
                            )],
                            description: "",
                            feed: "",
                            myList: false
                        ),
                        album: .init(
                            id: "671200beecb0223d4816f492",
                            contentId: "66f95fee637d4ed1a9d93c08fb5ae8ef",
                            customerId: 2,
                            albumType: "",
                            contentName: "Paiyaa",
                            isPremium: false,
                            contentType: "album",
                             albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 1698,
                            releasedAt: "2010-04-02",
                            languages: .init(
                                languageId: "378dde8df0d84e95b6f50c2b05a380a5",
                                languageName: "Tamil",
                                localName: "",
                                imageId: ""
                            ),
                            md1:  .init(
                                castId:  "64c6b5d4ceeb412db90f8820f724d25a",
                                castName: "Yuvan Shankar Raja"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            productionHouse: .init(
                                productionHouseId: "0b04cb50094144b1bc1afbca0c474f4d",
                                productionHouseName: "Thirupathi Brothers",
                                bannerImage: ""
                            ),
                            description: "Shiva, an engineering graduate, is not serious about his job or future even when his friends advise him about life. He falls in love with a girl he saw at a bus stop and finally gets to ride with her in a car.",
                            tracksCount: 6,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "album",
                        track: .init(
                            id: "",
                            contentId: "",
                            lyrics: "",
                            md1: .init(
                                castId:  "",
                                castName: ""
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 0,
                            contentName: "",
                            albumId: "",
                            albumName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1:[.init(imageUrl: "", imageType: "")],
                            albumImages2:[.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(),
                            singers: [ .init(
                                castId:  "",
                                castName: ""
                            )],
                            lyricist: [ .init(
                                castId:  "",
                                castName: ""
                            )],
                            description: "",
                            feed: "",
                            myList: false
                        ),
                        album:  .init(
                            id: "6712530cecb0223d4816f4b0",
                            contentId: "d3c44fbbbedf444eb442aea3c579cfbe",
                            customerId: 2,
                            albumType: "",
                            contentName: "Don ",
                            isPremium: false,
                            contentType: "album",
                             albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 804,
                            releasedAt: "2022-05-12",
                            languages: .init(
                                languageId: "378dde8df0d84e95b6f50c2b05a380a5",
                                languageName: "Tamil",
                                localName: "",
                                imageId: ""
                            ),
                            md1: .init(
                                castId:  "2cf78946a302473fa5c69f992b4a2f47",
                                castName: "Anirudh Ravichander"
                            ),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(
                                productionHouseId: "832362f5dd874c3facbc12ad683a88bf",
                                productionHouseName: "Lyca Productions",
                                bannerImage: ""
                            ),
                            description: "A youngster who is still figuring out what his passion is gets into an engineering college where he clashes with a disciplinarian faculty.",
                            tracksCount: 4,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "album",
                        track: .init(
                            id: "",
                            contentId: "",
                            lyrics: "",
                            md1: .init(
                                castId:  "",
                                castName: ""
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 0,
                            contentName: "",
                            albumId: "",
                            albumName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1:[.init(imageUrl: "", imageType: "")],
                            albumImages2:[.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(),
                            singers: [ .init(
                                castId:  "",
                                castName: ""
                            )],
                            lyricist: [ .init(
                                castId:  "",
                                castName: ""
                            )],
                            description: "",
                            feed: "",
                            myList: false
                        ),
                        album:  .init(
                            id: "6711ff67ecb0223d4816f47d",
                            contentId: "0802ac87d2d643bcb901bfb838d544d3",
                            customerId: 2,
                            albumType: "",
                            contentName: "Kadhalar Dhinam",
                            isPremium: false,
                            contentType: "album",
                            albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 2422,
                            releasedAt: "1999-07-09",
                            languages: .init(
                                languageId: "378dde8df0d84e95b6f50c2b05a380a5",
                                languageName: "Tamil",
                                localName: "",
                                imageId: ""
                            ),
                            md1: .init(
                                castId:  "f27125b5c1c6488abfd48b1dfc7a955e",
                                castName: "A.R. Rahman"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            productionHouse:  .init(
                                productionHouseId: "c1ed507a9050471dbeb0fbf79ffb8cd0",
                                productionHouseName: "Sri Surya Movies",
                                bannerImage: ""
                            ),
                            description: "Kadhalar Dhinam (1999) is a Tamil romantic drama about two college students who fall in love through online chat without knowing each other's identities. Directed by Kathir, the film explores themes of love, fate, and technology.",
                            tracksCount: 6,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "album",
                        track: .init(
                            id: "",
                            contentId: "",
                            lyrics: "",
                            md1: .init(
                                castId:  "",
                                castName: ""
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 0,
                            contentName: "",
                            albumId: "",
                            albumName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1:[.init(imageUrl: "", imageType: "")],
                            albumImages2:[.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(),
                            singers: [ .init(
                                castId:  "",
                                castName: ""
                            )],
                            lyricist: [ .init(
                                castId:  "",
                                castName: ""
                            )],
                            description: "",
                            feed: "",
                            myList: false
                        ),
                        album: .init(
                            id: "67120084ecb0223d4816f484",
                            contentId: "0edefe34af184eeaa56e975b43ce62c9",
                            customerId: 2,
                            albumType: "",
                            contentName: "Michael Jackson's Thriller",
                            isPremium: false,
                            contentType: "album",
                            albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 1634,
                            releasedAt: "1983-11-14",
                            languages: .init(
                                languageId: "260a6ae3d009403ca0ede4a4da2f6a20",
                                languageName: "English",
                                localName: "",
                                imageId: ""
                            ),
                            md1:  .init(
                                castId:  "504db0d17b024901a539b42103ba0be7",
                                castName: "Michael Jackson"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            productionHouse: .init(
                                productionHouseId: "ad4ccdba717c40a99b24b444161f18c9",
                                productionHouseName: "Optimum Productions",
                                bannerImage: ""
                            ),
                            description: "A night at the movies turns into a nightmare when Michael and his date are attacked by a horde of bloody-thirsty zombies. On top of the success of the Thriller album and Michael Jackson's electrifying performance at Motown 25, the short film/music video for \"Thriller\" established Jackson as an international superstar and global phenomenon. Thriller is credited for transforming music videos into a serious art form, breaking down racial barriers in popular entertainment, popularizing the making-of documentary format and creating a home video market. The success transformed Jackson into a dominant force in global pop culture. In 2009, it became the first music video inducted into the United States National Film Registry by the Library of Congress as \"culturally, historically or aesthetically significant\". \"Thriller\" was also Jackson's seventh and final U.S. Hot 100 Top 10 hit from the Thriller album. It was the first album in history to have seven U.S. Top 10s.",
                            tracksCount: 6,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "album",
                        track: .init(
                            id: "",
                            contentId: "",
                            lyrics: "",
                            md1: .init(
                                castId:  "",
                                castName: ""
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 0,
                            contentName: "",
                            albumId: "",
                            albumName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1:[.init(imageUrl: "", imageType: "")],
                            albumImages2:[.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(),
                            singers: [ .init(
                                castId:  "",
                                castName: ""
                            )],
                            lyricist: [ .init(
                                castId:  "",
                                castName: ""
                            )],
                            description: "",
                            feed: "",
                            myList: false
                        ),
                        album: .init(
                            id: "671205f0ecb0223d4816f4ac",
                            contentId: "02834541afff47a8ae86653be9744ebf",
                            customerId: 2,
                            albumType: "",
                            contentName: "Engeyum Eppothum",
                            isPremium: false,
                            contentType: "album",
                             albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 1161,
                            releasedAt: "2011-09-16",
                            languages: .init(
                                languageId: "378dde8df0d84e95b6f50c2b05a380a5",
                                languageName: "Tamil",
                                localName: "",
                                imageId: ""
                            ),
                            md1: .init(
                                castId:  "3507a6da234a467f9c6e829b0d9a07a7",
                                castName: "C. Sathya"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            productionHouse: .init(
                                productionHouseId: "998c0db8cc5940b3b843e3eee0f105ca",
                                productionHouseName: "A.R.Murugadoss Productions",
                                bannerImage: ""
                            ),
                            description: "Engeyum Eppothum (2011) is a Tamil romantic drama that follows the lives of four individuals whose fates intertwine after a tragic bus accident. The film explores love, relationships, and the unpredictability of life through parallel storylines.",
                            tracksCount: 5,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    )
                ],
                customLayouts: [.init(subLayoutId: "", subLayoutName: "", imageId: "")]
            ),
            .init(
                layoutSectionId:  "37c4ffd63d7e4aa687a04f81f890f244",
                customerId: 2,
                layoutId:  "e9bfcf45c0ce4355abb64c65015dced8",
                layoutName: "Anirudh Hits",
                layoutType: "HomePage",
                type: "",
                sectionType: .s1Section,
                sectionOrder: 3,
                layoutMode: "Manual",
                contents: [
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "671200a1ecb0223d4816f48c",
                            contentId: "2417daf850014fbb8f191bf78c052685",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/0b1114be83b249afa3db2f54016cbe2c.lrc",
                            md1: .init(
                                castId:  "811ff6af3de34ef599f634339a814226",
                                castName: "Anirudh Ravichander"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Remo Nee Kadhalan Song",
                            albumId: "433410b15bdd48e28f7d5eb587015205",
                            albumName: "Remo",
                            isPremium: false,
                            contentType: "Track",
                            albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300f",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 243,
                            releasedAt: "2016-10-07",
                            languages: .init(),
                            singers: [.init(castId: "", castName: "")],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Remo Nee Kadhalan Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/2417daf850014fbb8f191bf78c052685/b464675d022546cdaf1b5158fd2d4725/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "6712530cecb0223d4816f4b1",
                            contentId: "aa0609b5ab504391bf5155413e46e5c3",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/e2d0d1c3dae042cdadf8be2906f932cc.lrc",
                            md1: .init(
                                castId:  "2cf78946a302473fa5c69f992b4a2f47",
                                castName: "Anirudh Ravichander"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Private Party Song",
                            albumId: "d3c44fbbbedf444eb442aea3c579cfbe",
                            albumName: "Don ",
                            isPremium: false,
                            contentType: "Track",
                             albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 216,
                            releasedAt: "2022-05-12",
                            languages: .init(),
                            singers: [.init(castId: "", castName: "")],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Private Party Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/aa0609b5ab504391bf5155413e46e5c3/2a303769db644b5cb34552d1fb39632a/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "671200a1ecb0223d4816f490",
                            contentId: "59fec1b055d94be3978d8033c6adf2fe",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/9421fdcc36f74b128e06b169c6c475b8.lrc",
                            md1: .init(
                                castId:  "811ff6af3de34ef599f634339a814226",
                                castName: "Anirudh Ravichander"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Sirikkadhey Song",
                            albumId: "433410b15bdd48e28f7d5eb587015205",
                            albumName: "Remo",
                            isPremium: false,
                            contentType: "Track",
                            albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300f",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 245,
                            releasedAt: "2016-10-07",
                            languages: .init(),
                            singers: [.init(castId: "", castName: "")],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Sirikkadhey Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/59fec1b055d94be3978d8033c6adf2fe/432d94af6b13456ebabb275772c9093a/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "671200d1ecb0223d4816f49b",
                            contentId: "3f0e7cfbd72246458c55aac6a3d34772",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/dd13d1d3bca64292ae95f9bc5facad17.lrc",
                            md1: .init(
                                castId:  "2cf78946a302473fa5c69f992b4a2f47",
                                castName: "Anirudh Ravichander"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Bae Song",
                            albumId: "d3c44fbbbedf444eb442aea3c579cfbe",
                            albumName: "Don ",
                            isPremium: false,
                            contentType: "Track",
                             albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 242,
                            releasedAt: "2022-05-12",
                            languages: .init(),
                            singers: [.init(castId: "", castName: "")],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Bae Song",
                            feed:"https://innorelay-demo1.b-cdn.net/v1/relay/3f0e7cfbd72246458c55aac6a3d34772/f699a628946c4468bd896af4bc3f1956/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "671200a1ecb0223d4816f48f",
                            contentId: "470fc37c328e40aabb0c3a30c2f98200",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/401122cd974d4192aa2a12981d15780c.lrc",
                            md1: .init(
                                castId:  "811ff6af3de34ef599f634339a814226",
                                castName: "Anirudh Ravichander"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Senjitaley Song",
                            albumId: "433410b15bdd48e28f7d5eb587015205",
                            albumName: "Remo",
                            isPremium: false,
                            contentType: "Track",
                            albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300f",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 251,
                            releasedAt: "2016-10-07",
                            languages: .init(),
                            singers: [.init(castId: "", castName: "")],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Senjitaley Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/470fc37c328e40aabb0c3a30c2f98200/714e26ddd25e407fab2ee92b9ef8ce91/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "67125244ecb0223d4816f4af",
                            contentId: "d3728f284dfc4acdb5c6ac65505434d1",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/109a9f204b8a475da20115bec31471c5.lrc",
                            md1: .init(
                                castId:  "2cf78946a302473fa5c69f992b4a2f47",
                                castName: "Anirudh Ravichander"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Jalabulajangu Song",
                            albumId: "d3c44fbbbedf444eb442aea3c579cfbe",
                            albumName: "Don ",
                            isPremium: false,
                            contentType: "Track",
                             albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 202,
                            releasedAt: "2022-05-12",
                            languages: .init(),
                            singers: [.init(castId: "", castName: ""),
                                      .init(
                                        castId:  "e52ec35f5d0b4691a52745cb34aae5e8",
                                        castName: "Anirudh Ravichander"
                                      )
                            ],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Jalabulajangu Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/d3728f284dfc4acdb5c6ac65505434d1/1998a9ca3da34051873f56eea331d201/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    )
                ],
                customLayouts: [.init(subLayoutId:  "", subLayoutName: "", imageId: "")]
            ),
            .init(
                layoutSectionId: "50c87701b4e3462ca5874cae997e774e",
                customerId: 2,
                layoutId: "e9bfcf45c0ce4355abb64c65015dced8",
                layoutName: "Melody",
                layoutType: "HomePage",
                type: "",
                sectionType: .s1Section,
                sectionOrder: 4,
                layoutMode: "Manual",
                contents: [
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "6711ff4eecb0223d4816f47a",
                            contentId: "c515b4db913f4b5fa519db1ff6c1765f",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/c06b01cc172b46d9bfe5988782bf96b0.lrc",
                            md1: .init(
                                castId:  "3507a6da234a467f9c6e829b0d9a07a7",
                                castName: "C. Sathya"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Un Pere Theriyathu Song",
                            albumId: "02834541afff47a8ae86653be9744ebf",
                            albumName: "Engeyum Eppothum",
                            isPremium: false,
                            contentType: "Track",
                             albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 277,
                            releasedAt: "2011-09-16",
                            languages: .init(),
                            singers: [.init(castId: "", castName: "")],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Un Pere Theriyathu Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/c515b4db913f4b5fa519db1ff6c1765f/c872e39168be494987fd500b9cb54bec/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "671205f0ecb0223d4816f4ad",
                            contentId: "d4d9aeb2025f4d34acf6ea7fcd9aee8d",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/1f8b024eb5b4450085cd647ef1ab9436.lrc",
                            md1: .init(
                                castId:  "3507a6da234a467f9c6e829b0d9a07a7",
                                castName: "C. Sathya"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Chotta Chotta Nanaya Song",
                            albumId: "02834541afff47a8ae86653be9744ebf",
                            albumName: "Engeyum Eppothum",
                            isPremium: false,
                            contentType: "Track",
                             albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 263,
                            releasedAt: "2011-09-16",
                            languages: .init(),
                            singers: [.init(castId: "", castName: "")],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Chotta Chotta Nanaya Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/d4d9aeb2025f4d34acf6ea7fcd9aee8d/7a83a540ab2a44b9bec94f2e71f32a49/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "6711ff67ecb0223d4816f47e",
                            contentId: "2bf6bab6bf4d409d8093a0e5e6402f40",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/43536441ea3b45aa859cc3712ffe24d1.lrc",
                            md1: .init(
                                castId:  "f27125b5c1c6488abfd48b1dfc7a955e",
                                castName: "A.R. Rahman"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Roja Roja Song",
                            albumId: "0802ac87d2d643bcb901bfb838d544d3",
                            albumName: "Kadhalar Dhinam",
                            isPremium: false,
                            contentType: "Track",
                            albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 347,
                            releasedAt: "1999-07-09",
                            languages: .init(),
                            singers: [.init(castId: "", castName: "")],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Roja Roja Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/2bf6bab6bf4d409d8093a0e5e6402f40/4dcd50118ba740c08e72f9c436e0713f/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "6711ff67ecb0223d4816f47f",
                            contentId: "355acc4f69a14fbf9cb1a5eb207d1b3f",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/22f0a8923da6461cac17f755daaad997.lrc",
                            md1: .init(
                                castId:  "f27125b5c1c6488abfd48b1dfc7a955e",
                                castName: "A.R. Rahman"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Enna Vilai Azhagae Song",
                            albumId: "0802ac87d2d643bcb901bfb838d544d3",
                            albumName: "Kadhalar Dhinam",
                            isPremium: false,
                            contentType: "Track",
                            albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 355,
                            releasedAt: "1999-07-09",
                            languages: .init(),
                            singers: [.init(castId: "", castName: "")],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Enna Vilai Azhagae Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/355acc4f69a14fbf9cb1a5eb207d1b3f/36ec4b0a6580492d939dea15bfb851e4/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "6711ff67ecb0223d4816f481",
                            contentId: "4d711c3890cb4118942ec4ed9f4f5468",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/5bc63724f852429d8c2e3e8da931aa19.lrc",
                            md1: .init(
                                castId:  "f27125b5c1c6488abfd48b1dfc7a955e",
                                castName: "A.R. Rahman"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Kaathalenum Thervezhidhi Song",
                            albumId: "0802ac87d2d643bcb901bfb838d544d3",
                            albumName: "Kadhalar Dhinam",
                            isPremium: false,
                            contentType: "Track",
                            albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 403,
                            releasedAt: "1999-07-09",
                            languages: .init(),
                            singers: [.init(castId: "", castName: "")],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Kaathalenum Thervezhidhi Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/4d711c3890cb4118942ec4ed9f4f5468/42c712b934a342f886a70d33d4f22047/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "671200beecb0223d4816f495",
                            contentId: "2071b284da0d4060b674ecda90b8d3a4",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/2de3b2b72b2d4f4d9d4e38fd5386a794.lrc",
                            md1: .init(
                                castId:  "64c6b5d4ceeb412db90f8820f724d25a",
                                castName: "Yuvan Shankar Raja"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Suthuthe Suthuthe Bhoomi Song",
                            albumId: "66f95fee637d4ed1a9d93c08fb5ae8ef",
                            albumName: "Paiyaa",
                            isPremium: false,
                            contentType: "Track",
                             albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 300,
                            releasedAt: "2010-04-02",
                            languages: .init(),
                            singers: [.init(castId: "", castName: "")],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Suthuthe Suthuthe Bhoomi Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/2071b284da0d4060b674ecda90b8d3a4/228f234e1b364ac4a6a0956df53233d3/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "671200beecb0223d4816f496",
                            contentId: "4aafccf5f8e94ceebe2d895a19669a0a",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/7f6154428bf24d019b7117de69604920.lrc",
                            md1: .init(
                                castId:  "64c6b5d4ceeb412db90f8820f724d25a",
                                castName: "Yuvan Shankar Raja"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Thuli Thuli Mazhaiyaai Song",
                            albumId: "66f95fee637d4ed1a9d93c08fb5ae8ef",
                            albumName: "Paiyaa",
                            isPremium: false,
                            contentType: "Track",
                            albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 288,
                            releasedAt: "2010-04-02",
                            languages: .init(),
                            singers: [.init(castId: "", castName: "")],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Thuli Thuli Mazhaiyaai Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/4aafccf5f8e94ceebe2d895a19669a0a/03853a13920945188b33fa99bf626029/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    )
                ],
                customLayouts: [.init(subLayoutId: "", subLayoutName: "", imageId: "")]
            ),
            .init(
                layoutSectionId: "e1e940ad963b49bfbaece09a6d932c01",
                customerId: 2,
                layoutId: "e9bfcf45c0ce4355abb64c65015dced8",
                layoutName: "Michael Jackson",
                layoutType: "HomePage",
                type: "",
                sectionType: .s1Section,
                sectionOrder: 5,
                layoutMode: "Manual",
                contents: [
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "67120084ecb0223d4816f485",
                            contentId: "09514d100ea84a46a6ef13c39d1a7b92",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/1853006c8a4f4f4c8aa065f56c14fcd2.lrc",
                            md1: .init(
                                castId:  "504db0d17b024901a539b42103ba0be7",
                                castName: "Michael Jackson"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Billie Jean Song",
                            albumId: "0edefe34af184eeaa56e975b43ce62c9",
                            albumName: "Michael Jackson's Thriller",
                            isPremium: false,
                            contentType: "Track",
                             albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 293,
                            releasedAt: "1983-11-14",
                            languages: .init(),
                            singers: [.init(castId: "", castName: ""),
                                      .init(
                                        castId:  "504db0d17b024901a539b42103ba0be7",
                                        castName: "Michael Jackson"
                                      )
                            ],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Billie Jean Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/09514d100ea84a46a6ef13c39d1a7b92/7a65fbabdd844a0bbc228f373a36808e/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "67120085ecb0223d4816f487",
                            contentId: "8bf6178721cb4308992a6e38ca5c91b4",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/de48b60c6be947e0aa5b472e76fe864f.lrc",
                            md1: .init(
                                castId:  "504db0d17b024901a539b42103ba0be7",
                                castName: "Michael Jackson"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Thriller Song",
                            albumId: "0edefe34af184eeaa56e975b43ce62c9",
                            albumName: "Michael Jackson's Thriller",
                            isPremium: false,
                            contentType: "Track",
                            albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 357,
                            releasedAt: "1983-11-14",
                            languages: .init(),
                            singers: [.init(castId: "", castName: ""),
                                      .init(
                                        castId:  "504db0d17b024901a539b42103ba0be7",
                                        castName: "Michael Jackson"
                                      )
                            ],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Thriller Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/8bf6178721cb4308992a6e38ca5c91b4/0333e2c6a4de43c6b5c4ebaf96db8a3c/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "67120084ecb0223d4816f486",
                            contentId: "7434e74fc11c49ada1cd3b17edf0b7b0",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/54905fd35e1a4cfaa491b44e1a0be8aa.lrc",
                            md1: .init(
                                castId:  "504db0d17b024901a539b42103ba0be7",
                                castName: "Michael Jackson"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Human Nature Song",
                            albumId: "0edefe34af184eeaa56e975b43ce62c9",
                            albumName: "Michael Jackson's Thriller",
                            isPremium: false,
                            contentType: "Track",
                             albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 245,
                            releasedAt: "1983-11-14",
                            languages: .init(),
                            singers: [.init(castId: "", castName: ""),
                                      .init(
                                        castId:  "504db0d17b024901a539b42103ba0be7",
                                        castName: "Michael Jackson"
                                      )
                            ],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Human Nature Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/7434e74fc11c49ada1cd3b17edf0b7b0/4c66e8ec07374e6893fb017bcb3e0eed/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "67120085ecb0223d4816f488",
                            contentId: "b818759bccc54b26be8d6bddac42257f",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/f77200e35d084d82bc53d7667cffa854.lrc",
                            md1: .init(
                                castId:  "504db0d17b024901a539b42103ba0be7",
                                castName: "Michael Jackson"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Beat It Song",
                            albumId: "0edefe34af184eeaa56e975b43ce62c9",
                            albumName: "Michael Jackson's Thriller",
                            isPremium: false,
                            contentType: "Track",
                             albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 257,
                            releasedAt: "1983-11-14",
                            languages: .init(),
                            singers: [.init(castId: "", castName: ""),
                                      .init(
                                        castId:  "504db0d17b024901a539b42103ba0be7",
                                        castName: "Michael Jackson"
                                      )
                            ],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Beat It Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/b818759bccc54b26be8d6bddac42257f/6bed1cfe953d45978b8f9e83285da82e/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "67120085ecb0223d4816f489",
                            contentId: "db9444420ebe4cb3a8b4bcc776d592fd",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/90dd5079b7864170bf979ef4fa7f5c82.lrc",
                            md1: .init(
                                castId:  "504db0d17b024901a539b42103ba0be7",
                                castName: "Michael Jackson"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "The Girl Is Mine Song",
                            albumId: "0edefe34af184eeaa56e975b43ce62c9",
                            albumName: "Michael Jackson's Thriller",
                            isPremium: false,
                            contentType: "Track",
                             albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 222,
                            releasedAt: "1983-11-14",
                            languages: .init(),
                            singers: [.init(castId: "", castName: ""),
                                      .init(
                                        castId:  "504db0d17b024901a539b42103ba0be7",
                                        castName: "Michael Jackson"
                                      )
                            ],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "The Girl Is Mine Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/db9444420ebe4cb3a8b4bcc776d592fd/741029a761434fe498873c6220afef08/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "67120085ecb0223d4816f48a",
                            contentId: "fd024ff949e9418e9f306e2a5ae6c559",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/d4c15aa3151f48a4bcac98b9ebfef904.lrc",
                            md1: .init(
                                castId:  "504db0d17b024901a539b42103ba0be7",
                                castName: "Michael Jackson"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Baby Be Mine Song",
                            albumId: "0edefe34af184eeaa56e975b43ce62c9",
                            albumName: "Michael Jackson's Thriller",
                            isPremium: false,
                            contentType: "Track",
                            albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 260,
                            releasedAt: "1983-11-14",
                            languages: .init(),
                            singers: [.init(castId: "", castName: ""),
                                      .init(
                                        castId:  "504db0d17b024901a539b42103ba0be7",
                                        castName: "Michael Jackson"
                                      )
                            ],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Baby Be Mine Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/fd024ff949e9418e9f306e2a5ae6c559/8a094b741d704d5ba6f265bd1739a5f7/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    )
                ],
                customLayouts: [.init(subLayoutId: "", subLayoutName: "", imageId: "")]
            ),
            .init(
                layoutSectionId: "003daf0e754d40e0a9aa0d23f8e133c4",
                customerId: 2,
                layoutId: "e9bfcf45c0ce4355abb64c65015dced8",
                layoutName: "Evergreen Songs",
                layoutType: "HomePage",
                type: "",
                sectionType: .s1Section,
                sectionOrder: 6,
                layoutMode: "Manual",
                contents: [
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "6711ff67ecb0223d4816f47e",
                            contentId: "2bf6bab6bf4d409d8093a0e5e6402f40",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/43536441ea3b45aa859cc3712ffe24d1.lrc",
                            md1: .init(
                                castId:  "f27125b5c1c6488abfd48b1dfc7a955e",
                                castName: "A.R. Rahman"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Roja Roja Song",
                            albumId: "0802ac87d2d643bcb901bfb838d544d3",
                            albumName: "Kadhalar Dhinam",
                            isPremium: false,
                            contentType: "Track",
                            albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 347,
                            releasedAt: "1999-07-09",
                            languages: .init(),
                            singers: [.init(castId: "", castName: "")],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Roja Roja Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/2bf6bab6bf4d409d8093a0e5e6402f40/4dcd50118ba740c08e72f9c436e0713f/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "6711ff67ecb0223d4816f481",
                            contentId: "4d711c3890cb4118942ec4ed9f4f5468",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/5bc63724f852429d8c2e3e8da931aa19.lrc",
                            md1: .init(
                                castId:  "f27125b5c1c6488abfd48b1dfc7a955e",
                                castName: "A.R. Rahman"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Kaathalenum Thervezhidhi Song",
                            albumId: "0802ac87d2d643bcb901bfb838d544d3",
                            albumName: "Kadhalar Dhinam",
                            isPremium: false,
                            contentType: "Track",
                            albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 403,
                            releasedAt: "1999-07-09",
                            languages: .init(),
                            singers: [.init(castId: "", castName: "")],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Kaathalenum Thervezhidhi Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/4d711c3890cb4118942ec4ed9f4f5468/42c712b934a342f886a70d33d4f22047/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "6711ff67ecb0223d4816f47f",
                            contentId: "355acc4f69a14fbf9cb1a5eb207d1b3f",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/22f0a8923da6461cac17f755daaad997.lrc",
                            md1: .init(
                                castId:  "f27125b5c1c6488abfd48b1dfc7a955e",
                                castName: "A.R. Rahman"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Enna Vilai Azhagae Song",
                            albumId: "0802ac87d2d643bcb901bfb838d544d3",
                            albumName: "Kadhalar Dhinam",
                            isPremium: false,
                            contentType: "Track",
                            albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 355,
                            releasedAt: "1999-07-09",
                            languages: .init(),
                            singers: [.init(castId: "", castName: "")],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Enna Vilai Azhagae Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/355acc4f69a14fbf9cb1a5eb207d1b3f/36ec4b0a6580492d939dea15bfb851e4/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "671200beecb0223d4816f493",
                            contentId: "013bb9bd82fa45318577f34c13c5b5d5",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/ec5b1235df3b474bb31c6090704a790f.lrc",
                            md1: .init(
                                castId:  "64c6b5d4ceeb412db90f8820f724d25a",
                                castName: "Yuvan Shankar Raja"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Poongatre Poongatre Song",
                            albumId: "66f95fee637d4ed1a9d93c08fb5ae8ef",
                            albumName: "Paiyaa",
                            isPremium: false,
                            contentType: "Track",
                            albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 326,
                            releasedAt: "2010-04-02",
                            languages: .init(),
                            singers: [.init(castId: "", castName: "")],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Poongatre Poongatre Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/013bb9bd82fa45318577f34c13c5b5d5/bb1bae0cff714b398a64eafc81c7e3e9/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    ),
                    .init(
                        contentType: "Track",
                        track: .init(
                            id: "671200beecb0223d4816f497",
                            contentId: "7ff432e83a6948c9924d401f5e851858",
                            lyrics: "https://innorelay-demo1.b-cdn.net/v1/assets/lyrics/18b4fb2ebd78486f8c1beb8ded87cd2f.lrc",
                            md1: .init(
                                castId:  "64c6b5d4ceeb412db90f8820f724d25a",
                                castName: "Yuvan Shankar Raja"
                            ),
                            md2: .init(
                                castId:  "",
                                castName: ""
                            ),
                            customerId: 2,
                            contentName: "Adada Mazhaida Song",
                            albumId: "66f95fee637d4ed1a9d93c08fb5ae8ef",
                            albumName: "Paiyaa",
                            isPremium: false,
                            contentType: "Track",
                            albumImages1: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            albumImages2: [
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s1"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s2"
                                ),
                                .init(
                                    imageUrl: "https://picsum.photos/id/237/200/300",
                                    imageType: "s3"
                                )
                            ],
                            duration: 272,
                            releasedAt: "2010-04-02",
                            languages: .init(),
                            singers: [.init(castId: "", castName: "")],
                            lyricist: [.init(castId: "", castName: "")],
                            description: "Adada Mazhaida Song",
                            feed: "https://innorelay-demo1.b-cdn.net/v1/relay/7ff432e83a6948c9924d401f5e851858/32b089d7b9264d99855e15286ad8d4fc/master.m3u8",
                            myList: false
                        ),
                        album: .init(
                            id: "",
                            contentId: "",
                            customerId: 0,
                            albumType: "",
                            contentName: "",
                            isPremium: false,
                            contentType: "",
                            albumImages1: [.init(imageUrl: "", imageType: "")],
                            albumImages2: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            releasedAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "", imageId: ""),
                            md1: .init(castId: "", castName: ""),
                            md2: .init(castId: "", castName: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        ),
                        playlist: .init(
                            id:  "",
                            contentId: "",
                            customerId: 0,
                            user: .init(userId:  "", userName: ""),
                            contentName:  "",
                            isPrivate: false,
                            allowEdit: false,
                            isUser: false,
                            contentType:  "",
                            images: [.init(imageUrl: "", imageType: "")],
                            duration: 0,
                            createdAt: "",
                            languages: .init(languageId: "", languageName: "", localName: "",  imageId: ""),
                            productionHouse: .init(productionHouseId: "", productionHouseName: "", bannerImage: ""),
                            description: "",
                            tracksCount: 0,
                            myList: false
                        )
                    )
                ],
                customLayouts: [.init(subLayoutId: "", subLayoutName: "", imageId: "")]
            )
        ]
    }
}

