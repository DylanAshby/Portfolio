//------------------------------------------------------------------------------
// <auto-generated>                                                             
//     This code was generated by a tool.                                       
//     Changes to this file may cause incorrect behavior and will be lost if    
//     the code is regenerated.                                                 
// </auto-generated>                                                            
//------------------------------------------------------------------------------
#pragma warning disable 436
#pragma warning disable 162
#pragma warning disable 1591
using System;
using Microsoft.Quantum.Core;
using Microsoft.Quantum.Intrinsic;
using Microsoft.Quantum.Simulation.Core;

[assembly: CallableDeclaration("{\"Kind\":{\"Case\":\"Operation\"},\"QualifiedName\":{\"Namespace\":\"Qrng_16_bit\",\"Name\":\"Bit16Gen\"},\"Attributes\":[{\"TypeId\":{\"Case\":\"Value\",\"Fields\":[{\"Namespace\":\"Microsoft.Quantum.Core\",\"Name\":\"EntryPoint\",\"Range\":{\"Case\":\"Value\",\"Fields\":[{\"Item1\":{\"Line\":1,\"Column\":2},\"Item2\":{\"Line\":1,\"Column\":12}}]}}]},\"TypeIdRange\":{\"Case\":\"Value\",\"Fields\":[{\"Item1\":{\"Line\":1,\"Column\":2},\"Item2\":{\"Line\":1,\"Column\":12}}]},\"Argument\":{\"Item1\":{\"Case\":\"UnitValue\"},\"Item2\":[],\"Item3\":{\"Case\":\"UnitType\"},\"Item4\":{\"IsMutable\":false,\"HasLocalQuantumDependency\":false},\"Item5\":{\"Case\":\"Value\",\"Fields\":[{\"Item1\":{\"Line\":1,\"Column\":12},\"Item2\":{\"Line\":1,\"Column\":14}}]}},\"Offset\":{\"Item1\":8,\"Item2\":4},\"Comments\":{\"OpeningComments\":[],\"ClosingComments\":[]}}],\"Modifiers\":{\"Access\":{\"Case\":\"DefaultAccess\"}},\"SourceFile\":\"C:\\\\Users\\\\Dylan Ashby\\\\Desktop\\\\Portfolio\\\\Quantum\\\\Qrng_16-bit\\\\Program.qs\",\"Position\":{\"Item1\":9,\"Item2\":4},\"SymbolRange\":{\"Item1\":{\"Line\":1,\"Column\":11},\"Item2\":{\"Line\":1,\"Column\":19}},\"ArgumentTuple\":{\"Case\":\"QsTuple\",\"Fields\":[[]]},\"Signature\":{\"TypeParameters\":[],\"ArgumentType\":{\"Case\":\"UnitType\"},\"ReturnType\":{\"Case\":\"ArrayType\",\"Fields\":[{\"Case\":\"Bool\"}]},\"Information\":{\"Characteristics\":{\"Case\":\"EmptySet\"},\"InferredInformation\":{\"IsSelfAdjoint\":false,\"IsIntrinsic\":false}}},\"Documentation\":[]}")]
[assembly: SpecializationDeclaration("{\"Kind\":{\"Case\":\"QsBody\"},\"TypeArguments\":{\"Case\":\"Null\"},\"Information\":{\"Characteristics\":{\"Case\":\"EmptySet\"},\"InferredInformation\":{\"IsSelfAdjoint\":false,\"IsIntrinsic\":false}},\"Parent\":{\"Namespace\":\"Qrng_16_bit\",\"Name\":\"Bit16Gen\"},\"Attributes\":[],\"SourceFile\":\"C:\\\\Users\\\\Dylan Ashby\\\\Desktop\\\\Portfolio\\\\Quantum\\\\Qrng_16-bit\\\\Program.qs\",\"Position\":{\"Item1\":9,\"Item2\":4},\"HeaderRange\":{\"Item1\":{\"Line\":1,\"Column\":11},\"Item2\":{\"Line\":1,\"Column\":19}},\"Documentation\":[]}")]
[assembly: CallableDeclaration("{\"Kind\":{\"Case\":\"Operation\"},\"QualifiedName\":{\"Namespace\":\"Qrng_16_bit\",\"Name\":\"QuantumRandomNumberGenerator\"},\"Attributes\":[],\"Modifiers\":{\"Access\":{\"Case\":\"DefaultAccess\"}},\"SourceFile\":\"C:\\\\Users\\\\Dylan Ashby\\\\Desktop\\\\Portfolio\\\\Quantum\\\\Qrng_16-bit\\\\Program.qs\",\"Position\":{\"Item1\":21,\"Item2\":4},\"SymbolRange\":{\"Item1\":{\"Line\":1,\"Column\":11},\"Item2\":{\"Line\":1,\"Column\":39}},\"ArgumentTuple\":{\"Case\":\"QsTuple\",\"Fields\":[[]]},\"Signature\":{\"TypeParameters\":[],\"ArgumentType\":{\"Case\":\"UnitType\"},\"ReturnType\":{\"Case\":\"Result\"},\"Information\":{\"Characteristics\":{\"Case\":\"EmptySet\"},\"InferredInformation\":{\"IsSelfAdjoint\":false,\"IsIntrinsic\":false}}},\"Documentation\":[]}")]
[assembly: SpecializationDeclaration("{\"Kind\":{\"Case\":\"QsBody\"},\"TypeArguments\":{\"Case\":\"Null\"},\"Information\":{\"Characteristics\":{\"Case\":\"EmptySet\"},\"InferredInformation\":{\"IsSelfAdjoint\":false,\"IsIntrinsic\":false}},\"Parent\":{\"Namespace\":\"Qrng_16_bit\",\"Name\":\"QuantumRandomNumberGenerator\"},\"Attributes\":[],\"SourceFile\":\"C:\\\\Users\\\\Dylan Ashby\\\\Desktop\\\\Portfolio\\\\Quantum\\\\Qrng_16-bit\\\\Program.qs\",\"Position\":{\"Item1\":21,\"Item2\":4},\"HeaderRange\":{\"Item1\":{\"Line\":1,\"Column\":11},\"Item2\":{\"Line\":1,\"Column\":39}},\"Documentation\":[]}")]
#line hidden
namespace Qrng_16_bit
{
    [SourceLocation("C:\\Users\\Dylan Ashby\\Desktop\\Portfolio\\Quantum\\Qrng_16-bit\\Program.qs", OperationFunctor.Body, 10, 22)]
    public partial class Bit16Gen : Operation<QVoid, IQArray<Boolean>>, ICallable
    {
        public Bit16Gen(IOperationFactory m) : base(m)
        {
        }

        String ICallable.Name => "Bit16Gen";
        String ICallable.FullName => "Qrng_16_bit.Bit16Gen";
        public static EntryPointInfo<QVoid, IQArray<Boolean>> Info => new EntryPointInfo<QVoid, IQArray<Boolean>>(typeof(Bit16Gen));
        protected ICallable<QVoid, Result> QuantumRandomNumberGenerator__
        {
            get;
            set;
        }

        protected ICallable<IQArray<Result>, IQArray<Boolean>> Microsoft__Quantum__Convert__ResultArrayAsBoolArray
        {
            get;
            set;
        }

        public override Func<QVoid, IQArray<Boolean>> __Body__ => (__in__) =>
        {
#line 11 "C:\\Users\\Dylan Ashby\\Desktop\\Portfolio\\Quantum\\Qrng_16-bit\\Program.qs"
            var output = new QArray<Boolean>();
#line 12 "C:\\Users\\Dylan Ashby\\Desktop\\Portfolio\\Quantum\\Qrng_16-bit\\Program.qs"
            var bits = new QArray<Result>();
#line 14 "C:\\Users\\Dylan Ashby\\Desktop\\Portfolio\\Quantum\\Qrng_16-bit\\Program.qs"
            foreach (var bit in new QRange(0L, 16L))
#line hidden
            {
#line 15 "C:\\Users\\Dylan Ashby\\Desktop\\Portfolio\\Quantum\\Qrng_16-bit\\Program.qs"
                bits = QArray<Result>.Add(bits, new QArray<Result>(QuantumRandomNumberGenerator__.Apply(QVoid.Instance)));
            }

#line 18 "C:\\Users\\Dylan Ashby\\Desktop\\Portfolio\\Quantum\\Qrng_16-bit\\Program.qs"
            output = new QArray<Boolean>(Microsoft__Quantum__Convert__ResultArrayAsBoolArray.Apply(bits?.Copy()));
#line 19 "C:\\Users\\Dylan Ashby\\Desktop\\Portfolio\\Quantum\\Qrng_16-bit\\Program.qs"
            return output;
        }

        ;
        public override void __Init__()
        {
            this.QuantumRandomNumberGenerator__ = this.__Factory__.Get<ICallable<QVoid, Result>>(typeof(QuantumRandomNumberGenerator));
            this.Microsoft__Quantum__Convert__ResultArrayAsBoolArray = this.__Factory__.Get<ICallable<IQArray<Result>, IQArray<Boolean>>>(typeof(global::Microsoft.Quantum.Convert.ResultArrayAsBoolArray));
        }

        public override IApplyData __DataIn__(QVoid data) => data;
        public override IApplyData __DataOut__(IQArray<Boolean> data) => data;
        public static System.Threading.Tasks.Task<IQArray<Boolean>> Run(IOperationFactory __m__)
        {
            return __m__.Run<Bit16Gen, QVoid, IQArray<Boolean>>(QVoid.Instance);
        }
    }

    [SourceLocation("C:\\Users\\Dylan Ashby\\Desktop\\Portfolio\\Quantum\\Qrng_16-bit\\Program.qs", OperationFunctor.Body, 22, -1)]
    public partial class QuantumRandomNumberGenerator : Operation<QVoid, Result>, ICallable
    {
        public QuantumRandomNumberGenerator(IOperationFactory m) : base(m)
        {
        }

        String ICallable.Name => "QuantumRandomNumberGenerator";
        String ICallable.FullName => "Qrng_16_bit.QuantumRandomNumberGenerator";
        protected Allocate Allocate__
        {
            get;
            set;
        }

        protected Release Release__
        {
            get;
            set;
        }

        protected IUnitary<Qubit> Microsoft__Quantum__Intrinsic__H
        {
            get;
            set;
        }

        protected ICallable<Qubit, Result> Microsoft__Quantum__Intrinsic__M
        {
            get;
            set;
        }

        public override Func<QVoid, Result> __Body__ => (__in__) =>
        {
#line hidden
            {
#line 23 "C:\\Users\\Dylan Ashby\\Desktop\\Portfolio\\Quantum\\Qrng_16-bit\\Program.qs"
                var q = Allocate__.Apply();
#line hidden
                bool __arg1__ = true;
                try
                {
#line 25 "C:\\Users\\Dylan Ashby\\Desktop\\Portfolio\\Quantum\\Qrng_16-bit\\Program.qs"
                    Microsoft__Quantum__Intrinsic__H.Apply(q);
#line 26 "C:\\Users\\Dylan Ashby\\Desktop\\Portfolio\\Quantum\\Qrng_16-bit\\Program.qs"
                    return Microsoft__Quantum__Intrinsic__M.Apply(q);
                }
#line hidden
                catch
                {
                    __arg1__ = false;
                    throw;
                }
#line hidden
                finally
                {
                    if (__arg1__)
                    {
#line hidden
                        Release__.Apply(q);
                    }
                }
            }
        }

        ;
        public override void __Init__()
        {
            this.Allocate__ = this.__Factory__.Get<Allocate>(typeof(global::Microsoft.Quantum.Intrinsic.Allocate));
            this.Release__ = this.__Factory__.Get<Release>(typeof(global::Microsoft.Quantum.Intrinsic.Release));
            this.Microsoft__Quantum__Intrinsic__H = this.__Factory__.Get<IUnitary<Qubit>>(typeof(global::Microsoft.Quantum.Intrinsic.H));
            this.Microsoft__Quantum__Intrinsic__M = this.__Factory__.Get<ICallable<Qubit, Result>>(typeof(global::Microsoft.Quantum.Intrinsic.M));
        }

        public override IApplyData __DataIn__(QVoid data) => data;
        public override IApplyData __DataOut__(Result data) => new QTuple<Result>(data);
        public static System.Threading.Tasks.Task<Result> Run(IOperationFactory __m__)
        {
            return __m__.Run<QuantumRandomNumberGenerator, QVoid, Result>(QVoid.Instance);
        }
    }
}