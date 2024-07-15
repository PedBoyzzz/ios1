//
//  ViewController.swift
//  Project19
//
//  Created by Niwat on 13/7/2567 BE.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 21
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cc", for: indexPath) as! CellJit
        cell.backgroundColor = .cyan
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)    {
            print("selecttttt select at \(indexPath.row)")
    }

    @IBOutlet weak var grid: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        grid.delegate = self
        grid.dataSource = self
        grid.isPagingEnabled = true
        /*
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let width = UIScreen.main.bounds.width
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        layout.itemSize = CGSize(width: width / 2, height: width / 2)
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        grid.collectionViewLayout = layout*/
        // Do any additional setup after loading the view.
        
        //Define Layout here
            let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()

            //Get device width
            /*let width = UIScreen.main.bounds.width

            //set section inset as per your requirement.
            layout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)

            //set cell item size here
            layout.itemSize = CGSize(width: width / 2, height: width / 2)

            //set Minimum spacing between 2 items
            layout.minimumInteritemSpacing = 0

            //set minimum vertical line spacing here between two lines in collectionview
            layout.minimumLineSpacing = 0

            //apply defined layout to collectionview
            grid.collectionViewLayout = layout*/
        
    }
    
    func foodBannerSection()-> NSCollectionLayoutSection {
         let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
         let item = NSCollectionLayoutItem(layoutSize: itemSize)
         let groupSize = NSCollectionLayoutSize(widthDimension:        .fractionalWidth(0.7), heightDimension: .absolute(225))
         let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
         let section = NSCollectionLayoutSection(group: group)
         section.orthogonalScrollingBehavior = .continuous
         return section
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
