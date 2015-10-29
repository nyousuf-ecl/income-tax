describe IncomeTax::Countries::SvalbardAndJanMayen do
  subject(:result) { described_class.new(income: income, income_type: type) }
  let(:type) { :gross }

  describe "from gross income of 0" do
    let(:income)       { 0                                         }
    its(:rate)         { should be == Rational(3, 50)              }
    its(:gross_income) { should be == 0                            }
    its(:net_income)   { should be == 0                            }
    its(:taxes)        { should be == 0                            }
  end

  describe "from gross income of 1000" do
    let(:income)       { 1000                                      }
    its(:rate)         { should be == Rational(3, 50)              }
    its(:gross_income) { should be == 1000                         }
    its(:net_income)   { should be == 940                          }
    its(:taxes)        { should be == 60                           }
  end

  describe "from gross income of 10000" do
    let(:income)       { 10000                                     }
    its(:rate)         { should be == Rational(3, 50)              }
    its(:gross_income) { should be == 10000                        }
    its(:net_income)   { should be == 9400                         }
    its(:taxes)        { should be == 600                          }
  end

  describe "from gross income of 100000" do
    let(:income)       { 100000                                    }
    its(:rate)         { should be == Rational(3, 50)              }
    its(:gross_income) { should be == 100000                       }
    its(:net_income)   { should be == 94000                        }
    its(:taxes)        { should be == 6000                         }
  end

  describe "from gross income of 100000000" do
    let(:income)       { 100000000                                 }
    its(:rate)         { should be == Rational(3, 50)              }
    its(:gross_income) { should be == 100000000                    }
    its(:net_income)   { should be == 94000000                     }
    its(:taxes)        { should be == 6000000                      }
  end

  describe "from net income of 0" do
    let(:type)         { :net                                      }
    let(:income)       { 0                                         }
    its(:rate)         { should be == Rational(3, 50)              }
    its(:gross_income) { should be == 0                            }
    its(:net_income)   { should be == 0                            }
    its(:taxes)        { should be == 0                            }
  end

  describe "from net income of 1000" do
    let(:type)         { :net                                      }
    let(:income)       { 1000                                      }
    its(:rate)         { should be == Rational(3, 50)              }
    its(:gross_income) { should be == "1063.82978723404255".to_d   }
    its(:net_income)   { should be == 1000                         }
    its(:taxes)        { should be == "63.8297872340425532".to_d   }
  end

  describe "from net income of 10000" do
    let(:type)         { :net                                      }
    let(:income)       { 10000                                     }
    its(:rate)         { should be == Rational(3, 50)              }
    its(:gross_income) { should be == "10638.2978723404255".to_d   }
    its(:net_income)   { should be == 10000                        }
    its(:taxes)        { should be == "638.29787234042553".to_d    }
  end

  describe "from net income of 100000" do
    let(:type)         { :net                                      }
    let(:income)       { 100000                                    }
    its(:rate)         { should be == Rational(3, 50)              }
    its(:gross_income) { should be == "106382.978723404255".to_d   }
    its(:net_income)   { should be == 100000                       }
    its(:taxes)        { should be == "6382.9787234042553".to_d    }
  end

  describe "from net income of 100000000" do
    let(:type)         { :net                                      }
    let(:income)       { 100000000                                 }
    its(:rate)         { should be == Rational(3, 50)              }
    its(:gross_income) { should be == "106382978.723404255".to_d   }
    its(:net_income)   { should be == 100000000                    }
    its(:taxes)        { should be == "6382978.7234042553".to_d    }
  end
end
