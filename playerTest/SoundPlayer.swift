import Foundation
import AVFoundation
class SoundPlayer {
    
    static var shared = SoundPlayer()
    
    private var player: AVAudioPlayer?
    
    
     func PlaySound(SoudName : String , SoundType : String ){
        
        if let pl = player {
            pl.stop()
            pl.currentTime = 0
        }
        
        
        DispatchQueue.global(qos: .userInteractive).async {
            
            
            let url = Bundle.main.url(forResource: SoudName, withExtension: SoundType)!
            
            do {
                self.player = try AVAudioPlayer(contentsOf: url)
                guard let player = self.player else { return }
                
                player.prepareToPlay()
                player.play()
            } catch {
            }
            
        }
        
        
    }
    
    
}
