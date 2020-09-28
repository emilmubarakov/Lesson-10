//
//  WebImageView.swift
//  NewVkNews
//
//  Created by Emil Mubarakov on 12/08/2020.
//  Copyright © 2020 Emil Mubarakov. All rights reserved.
//

import UIKit

class WebImageView: UIImageView {
    
    func set(imageURL: String?) {
        guard let imageURL = imageURL, let url = URL(string: imageURL) else {
            self.image = nil
            return}
        // проверяем лежит ли в кэше
        if let cacheResponse = URLCache.shared.cachedResponse(for: URLRequest(url: url)) {
            self.image = UIImage(data: cacheResponse.data)
            return
        }
        
        //загружаем фотку
        let dataTask = URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
            
            DispatchQueue.main.async {
                if let data = data, let response = response {
                    self?.image = UIImage(data: data)
                    self?.handleLoadedImage(data: data, response: response)
                }
            }
        }
        dataTask.resume()
    }
    
    //загружаем в кэш
    
    private func handleLoadedImage(data: Data, response: URLResponse) {
        guard let responseURL = response.url else {return}
        let cachedResponse = CachedURLResponse(response: response, data: data)
        URLCache.shared.storeCachedResponse(cachedResponse, for: URLRequest(url: responseURL))
    }
}
