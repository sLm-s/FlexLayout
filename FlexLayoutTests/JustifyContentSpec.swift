// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.

import Quick
import Nimble

class JustifyContentSpec: QuickSpec {
    override func spec() {
        var viewController: UIViewController!
        var rootFlexContainer: UIView!
        var aView: UIView!
        var bView: UIView!
        var cView: UIView!
        var dView: UIView!

        beforeSuite {
        }
        
        beforeEach {
            viewController = UIViewController()
            
            rootFlexContainer = UIView()
            rootFlexContainer.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            viewController.view.addSubview(rootFlexContainer)
            
            aView = UIView()
            bView = UIView()
            cView = UIView()
            dView = UIView()
        }
        
        describe("justifyContent") {
            it("adjust view position") {
                rootFlexContainer.flex.define { (flex) in
                    flex.addItem(aView).size(20)
                    flex.addItem(bView).size(20)
                    flex.addItem(cView).size(20)
                    flex.addItem(dView).size(20)
                }
                rootFlexContainer.flex.layout()
                expect(aView.frame).to(equal(CGRect(x: 0.0, y: 0.0, width: 20.0, height: 20.0)))
                expect(bView.frame).to(equal(CGRect(x: 0.0, y: 20.0, width: 20.0, height: 20.0)))
                expect(cView.frame).to(equal(CGRect(x: 0.0, y: 40.0, width: 20.0, height: 20.0)))
                expect(dView.frame).to(equal(CGRect(x: 0.0, y: 60.0, width: 20.0, height: 20.0)))
            }
        
            it("adjust view position") {
                rootFlexContainer.flex.justifyContent(.start).define { (flex) in
                    flex.addItem(aView).size(20)
                    flex.addItem(bView).size(20)
                    flex.addItem(cView).size(20)
                    flex.addItem(dView).size(20)
                }
                rootFlexContainer.flex.layout()
                expect(aView.frame).to(equal(CGRect(x: 0.0, y: 0.0, width: 20.0, height: 20.0)))
                expect(bView.frame).to(equal(CGRect(x: 0.0, y: 20.0, width: 20.0, height: 20.0)))
                expect(cView.frame).to(equal(CGRect(x: 0.0, y: 40.0, width: 20.0, height: 20.0)))
                expect(dView.frame).to(equal(CGRect(x: 0.0, y: 60.0, width: 20.0, height: 20.0)))
            }
            
            it("adjust view position") {
                rootFlexContainer.flex.justifyContent(.center).define { (flex) in
                    flex.addItem(aView).size(20)
                    flex.addItem(bView).size(20)
                    flex.addItem(cView).size(20)
                    flex.addItem(dView).size(20)
                }
                rootFlexContainer.flex.layout()
                expect(aView.frame).to(equal(CGRect(x: 0.0, y: 160.0, width: 20.0, height: 20.0)))
                expect(bView.frame).to(equal(CGRect(x: 0.0, y: 180.0, width: 20.0, height: 20.0)))
                expect(cView.frame).to(equal(CGRect(x: 0.0, y: 200.0, width: 20.0, height: 20.0)))
                expect(dView.frame).to(equal(CGRect(x: 0.0, y: 220.0, width: 20.0, height: 20.0)))
            }
            
            it("adjust view position") {
                rootFlexContainer.flex.justifyContent(.spaceAround).define { (flex) in
                    flex.addItem(aView).size(20)
                    flex.addItem(bView).size(20)
                    flex.addItem(cView).size(20)
                    flex.addItem(dView).size(20)
                }
                rootFlexContainer.flex.layout()
                expect(aView.frame).to(equal(CGRect(x: 0.0, y: 40.0, width: 20.0, height: 20.0)))
                expect(bView.frame).to(equal(CGRect(x: 0.0, y: 140.0, width: 20.0, height: 20.0)))
                expect(cView.frame).to(equal(CGRect(x: 0.0, y: 240.0, width: 20.0, height: 20.0)))
                expect(dView.frame).to(equal(CGRect(x: 0.0, y: 340.0, width: 20.0, height: 20.0)))
            }
            
            it("adjust view position") {
                rootFlexContainer.flex.justifyContent(.spaceBetween).define { (flex) in
                    flex.addItem(aView).size(20)
                    flex.addItem(bView).size(20)
                    flex.addItem(cView).size(20)
                    flex.addItem(dView).size(20)
                }
                rootFlexContainer.flex.layout()
                expect(aView.frame).to(equal(CGRect(x: 0.0, y: 0.0, width: 20.0, height: 20.0)))
                expect(bView.frame).to(equal(CGRect(x: 0.0, y: 126.5, width: 20.0, height: 20.0)))
                expect(cView.frame).to(equal(CGRect(x: 0.0, y: 253.0, width: 20.0, height: 20.0)))
                expect(dView.frame).to(equal(CGRect(x: 0.0, y: 380.0, width: 20.0, height: 20.0)))
            }
            
            it("adjust view position") {
                rootFlexContainer.flex.justifyContent(.spaceBetween).define { (flex) in
                    flex.addItem(aView).size(20).marginTop(10)
                    flex.addItem(bView).size(20)
                    flex.addItem(cView).size(20)
                    flex.addItem(dView).size(20).marginBottom(10)
                }
                rootFlexContainer.flex.layout()
                expect(aView.frame).to(equal(CGRect(x: 0.0, y: 10.0, width: 20.0, height: 20.0)))
                expect(bView.frame).to(equal(CGRect(x: 0.0, y: 130.0, width: 20.0, height: 20.0)))
                expect(cView.frame).to(equal(CGRect(x: 0.0, y: 250.0, width: 20.0, height: 20.0)))
                expect(dView.frame).to(equal(CGRect(x: 0.0, y: 370.0, width: 20.0, height: 20.0)))
            }
        }
    }
}
