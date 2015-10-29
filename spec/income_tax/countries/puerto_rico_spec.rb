describe IncomeTax::Countries::PuertoRico do
  subject(:result) { described_class.new(income: income, income_type: type) }
  let(:type) { :gross }

  describe "from gross income of 0" do
    let(:income)       { 0                                         }
    its(:rate)         { should be == Rational(1, 25)              }
    its(:gross_income) { should be == 0                            }
    its(:net_income)   { should be == 0                            }
    its(:taxes)        { should be == 0                            }
  end

  describe "from gross income of 1000" do
    let(:income)       { 1000                                      }
    its(:rate)         { should be == Rational(1, 25)              }
    its(:gross_income) { should be == 1000                         }
    its(:net_income)   { should be == 960                          }
    its(:taxes)        { should be == 40                           }
  end

  describe "from gross income of 10000" do
    let(:income)       { 10000                                     }
    its(:rate)         { should be == Rational(1, 25)              }
    its(:gross_income) { should be == 10000                        }
    its(:net_income)   { should be == 9600                         }
    its(:taxes)        { should be == 400                          }
  end

  describe "from gross income of 100000" do
    let(:income)       { 100000                                    }
    its(:rate)         { should be == Rational(1, 25)              }
    its(:gross_income) { should be == 100000                       }
    its(:net_income)   { should be == 96000                        }
    its(:taxes)        { should be == 4000                         }
  end

  describe "from gross income of 100000000" do
    let(:income)       { 100000000                                 }
    its(:rate)         { should be == Rational(1, 25)              }
    its(:gross_income) { should be == 100000000                    }
    its(:net_income)   { should be == 96000000                     }
    its(:taxes)        { should be == 4000000                      }
  end

  describe "from net income of 0" do
    let(:type)         { :net                                      }
    let(:income)       { 0                                         }
    its(:rate)         { should be == Rational(1, 25)              }
    its(:gross_income) { should be == 0                            }
    its(:net_income)   { should be == 0                            }
    its(:taxes)        { should be == 0                            }
  end

  describe "from net income of 1000" do
    let(:type)         { :net                                      }
    let(:income)       { 1000                                      }
    its(:rate)         { should be == Rational(1, 25)              }
    its(:gross_income) { should be == "1041.66666666666667".to_d   }
    its(:net_income)   { should be == 1000                         }
    its(:taxes)        { should be == "41.6666666666666667".to_d   }
  end

  describe "from net income of 10000" do
    let(:type)         { :net                                      }
    let(:income)       { 10000                                     }
    its(:rate)         { should be == Rational(1, 25)              }
    its(:gross_income) { should be == "10416.6666666666667".to_d   }
    its(:net_income)   { should be == 10000                        }
    its(:taxes)        { should be == "416.66666666666667".to_d    }
  end

  describe "from net income of 100000" do
    let(:type)         { :net                                      }
    let(:income)       { 100000                                    }
    its(:rate)         { should be == Rational(1, 25)              }
    its(:gross_income) { should be == "104166.666666666667".to_d   }
    its(:net_income)   { should be == 100000                       }
    its(:taxes)        { should be == "4166.6666666666667".to_d    }
  end

  describe "from net income of 100000000" do
    let(:type)         { :net                                      }
    let(:income)       { 100000000                                 }
    its(:rate)         { should be == Rational(1, 25)              }
    its(:gross_income) { should be == "104166666.666666667".to_d   }
    its(:net_income)   { should be == 100000000                    }
    its(:taxes)        { should be == "4166666.66666666667".to_d   }
  end
end
