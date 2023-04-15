//
//  favoritesTopView.swift
//  CaZaIt_FavoritesView
//
//  Created by 홍서린 on 2023/01/26.

//
import UIKit

class favoritesTopView: UIView {
    
    //init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupLayout()
    }
    
    let favoritesCafeLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        //label.textAlignment = .left
        label.text = "관심 매장"
        label.textColor = UIColor(r: 93, g: 36, b: 36)
        
        return label
    }()
    
    
    //constraints
    func setupLayout() {
        
        backgroundColor = .white
        
        self.addSubview(favoritesCafeLabel)
 
        
        NSLayoutConstraint.activate([
            
            favoritesCafeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 159),
            favoritesCafeLabel.topAnchor.constraint(equalTo: topAnchor, constant: 30),

        ])
        
    }
    
}
