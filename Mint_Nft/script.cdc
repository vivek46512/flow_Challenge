import CryptoPoops from 0x01
import NonFungibleToken from 0x02

pub fun main(account: Address): &NonFungibleToken.NFT {

  let publicRefrence = getAccount(account).getCapability(/public/Collection) 
                          .borrow<&CryptoPoops.Collection{CryptoPoops.MyNftCollections}>() 
                          ?? panic("Collection  absent")
                          
  let NFTId = publicRefrence.getIDs()
  return publicRefrence.borrowAuthNFT(id: NFTId[0])
}
