//
//  ContentView.swift
//  BasicRoller
//
//  Created by Jason Bice on 1/11/20.
//  Copyright © 2020 B Team Games. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var randNum1 = 1
    @State private var randNum2 = 1
    @State private var randNum3 = 1
    @State private var randNum4 = 1
    @State private var randNum5 = 1
    @State private var randNum6 = 1
    @State private var lock1 = false
    @State private var lock2 = false
    @State private var lock3 = false
    @State private var lock4 = false
    @State private var lock5 = false
    @State private var lock6 = false
    
    
    var body: some View {
        ZStack {
            Image("Background")
                .resizable().edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                HStack {
                    Button(action: {
                        
                        if self.lock1 == false {self.lock1 = true} else { self.lock1 = false}
                        
                    }, label: {
                        if self.lock1 == true {
                            ZStack {
                                
                                Image("DiceSide0" + String(randNum1))
                                .renderingMode(.original)
                                Image("Lock")
                                    .renderingMode(.original).padding(.trailing, 70).padding(.bottom, 70)
                                
                            }
                            
                        } else {
                        Image("DiceSide0" + String(randNum1))
                            .renderingMode(.original)
                        }
                    })
                    Button(action: {
                        
                        if self.lock2 == false {self.lock2 = true} else { self.lock2 = false}
                        
                    }, label: {
                        if self.lock2 == true {
                            ZStack {
                                
                                Image("DiceSide0" + String(randNum2))
                                .renderingMode(.original)
                                Image("Lock")
                                    .renderingMode(.original).padding(.trailing, 70).padding(.bottom, 70)
                                
                            }
                            
                        } else {
                        Image("DiceSide0" + String(randNum2))
                            .renderingMode(.original)
                        }
                    })
                }
                HStack {
                    Button(action: {
                        
                        if self.lock3 == false {self.lock3 = true} else { self.lock3 = false}
                        
                    }, label: {
                        if self.lock3 == true {
                            ZStack {
                                
                                Image("DiceSide0" + String(randNum3))
                                .renderingMode(.original)
                                Image("Lock")
                                    .renderingMode(.original).padding(.trailing, 70).padding(.bottom, 70)
                                
                            }
                            
                        } else {
                        Image("DiceSide0" + String(randNum3))
                            .renderingMode(.original)
                        }
                    })
                    Button(action: {
                        
                        if self.lock4 == false {self.lock4 = true} else { self.lock4 = false}
                        
                    }, label: {
                        if self.lock4 == true {
                            ZStack {
                                
                                Image("DiceSide0" + String(randNum4))
                                .renderingMode(.original)
                                Image("Lock")
                                    .renderingMode(.original).padding(.trailing, 70).padding(.bottom, 70)
                                
                            }
                            
                        } else {
                        Image("DiceSide0" + String(randNum4))
                            .renderingMode(.original)
                        }
                    })
                }
                
                HStack {
                    Button(action: {
                        
                        if self.lock5 == false {self.lock5 = true} else { self.lock5 = false}
                        
                    }, label: {
                        if self.lock5 == true {
                            ZStack {
                                
                                Image("DiceSide0" + String(randNum5))
                                .renderingMode(.original)
                                Image("Lock")
                                    .renderingMode(.original).padding(.trailing, 70).padding(.bottom, 70)
                                
                            }
                            
                        } else {
                        Image("DiceSide0" + String(randNum5))
                            .renderingMode(.original)
                        }
                    })
                    Button(action: {
                        
                        if self.lock6 == false {self.lock6 = true} else { self.lock6 = false}
                        
                    }, label: {
                        if self.lock6 == true {
                            ZStack {
                                
                                Image("DiceSide0" + String(randNum6))
                                .renderingMode(.original)
                                Image("Lock")
                                    .renderingMode(.original).padding(.trailing, 70).padding(.bottom, 70)
                                
                            }
                            
                        } else {
                        Image("DiceSide0" + String(randNum6))
                            .renderingMode(.original)
                        }
                    })
                }
                
                Spacer()
                Button(action: {
                    if !self.lock1 {
                        self.randNum1 = Int.random(in: 1...6)
                    }
                    if !self.lock2 {
                        self.randNum2 = Int.random(in: 1...6)
                    }
                    if !self.lock3 {
                        self.randNum3 = Int.random(in: 1...6)
                    }
                    if !self.lock4 {
                        self.randNum4 = Int.random(in: 1...6)
                    }
                    if !self.lock5 {
                        self.randNum5 = Int.random(in: 1...6)
                    }
                    if !self.lock6 {
                        self.randNum6 = Int.random(in: 1...6)
                    }
                    
                })
                {
                    Image("RollButton")
                        .renderingMode(.original)
                }
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
