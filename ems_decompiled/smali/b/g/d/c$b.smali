.class public Lb/g/d/c$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static p0:Landroid/util/SparseIntArray;


# instance fields
.field public A:I

.field public B:F

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:F

.field public U:F

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public a:Z

.field public a0:I

.field public b:Z

.field public b0:I

.field public c:I

.field public c0:I

.field public d:I

.field public d0:F

.field public e:I

.field public e0:F

.field public f:I

.field public f0:I

.field public g:F

.field public g0:I

.field public h:I

.field public h0:I

.field public i:I

.field public i0:[I

.field public j:I

.field public j0:Ljava/lang/String;

.field public k:I

.field public k0:Ljava/lang/String;

.field public l:I

.field public l0:Z

.field public m:I

.field public m0:Z

.field public n:I

.field public n0:Z

.field public o:I

.field public o0:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:F

.field public x:F

.field public y:Ljava/lang/String;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintLeft_toLeftOf:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintLeft_toRightOf:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintRight_toLeftOf:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintRight_toRightOf:I

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintTop_toTopOf:I

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintTop_toBottomOf:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintBottom_toTopOf:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintBottom_toBottomOf:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_android_orientation:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintStart_toEndOf:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintStart_toStartOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintVertical_weight:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintHorizontal_weight:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintVertical_bias:I

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintLeft_creator:I

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_android_layout_marginLeft:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_android_layout_marginRight:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_android_layout_marginStart:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_android_layout_marginTop:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_android_layout_width:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintWidth:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintHeight:I

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constrainedWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constrainedHeight:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_wrapBehaviorInParent:I

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_barrierMargin:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_constraint_referenced_ids:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Layout_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/g/d/c$b;->a:Z

    iput-boolean v0, p0, Lb/g/d/c$b;->b:Z

    const/4 v1, -0x1

    iput v1, p0, Lb/g/d/c$b;->e:I

    iput v1, p0, Lb/g/d/c$b;->f:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lb/g/d/c$b;->g:F

    iput v1, p0, Lb/g/d/c$b;->h:I

    iput v1, p0, Lb/g/d/c$b;->i:I

    iput v1, p0, Lb/g/d/c$b;->j:I

    iput v1, p0, Lb/g/d/c$b;->k:I

    iput v1, p0, Lb/g/d/c$b;->l:I

    iput v1, p0, Lb/g/d/c$b;->m:I

    iput v1, p0, Lb/g/d/c$b;->n:I

    iput v1, p0, Lb/g/d/c$b;->o:I

    iput v1, p0, Lb/g/d/c$b;->p:I

    iput v1, p0, Lb/g/d/c$b;->q:I

    iput v1, p0, Lb/g/d/c$b;->r:I

    iput v1, p0, Lb/g/d/c$b;->s:I

    iput v1, p0, Lb/g/d/c$b;->t:I

    iput v1, p0, Lb/g/d/c$b;->u:I

    iput v1, p0, Lb/g/d/c$b;->v:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lb/g/d/c$b;->w:F

    iput v3, p0, Lb/g/d/c$b;->x:F

    const/4 v3, 0x0

    iput-object v3, p0, Lb/g/d/c$b;->y:Ljava/lang/String;

    iput v1, p0, Lb/g/d/c$b;->z:I

    iput v0, p0, Lb/g/d/c$b;->A:I

    const/4 v3, 0x0

    iput v3, p0, Lb/g/d/c$b;->B:F

    iput v1, p0, Lb/g/d/c$b;->C:I

    iput v1, p0, Lb/g/d/c$b;->D:I

    iput v1, p0, Lb/g/d/c$b;->E:I

    iput v0, p0, Lb/g/d/c$b;->F:I

    iput v0, p0, Lb/g/d/c$b;->G:I

    iput v0, p0, Lb/g/d/c$b;->H:I

    iput v0, p0, Lb/g/d/c$b;->I:I

    iput v0, p0, Lb/g/d/c$b;->J:I

    iput v0, p0, Lb/g/d/c$b;->K:I

    iput v0, p0, Lb/g/d/c$b;->L:I

    const/high16 v3, -0x80000000

    iput v3, p0, Lb/g/d/c$b;->M:I

    iput v3, p0, Lb/g/d/c$b;->N:I

    iput v3, p0, Lb/g/d/c$b;->O:I

    iput v3, p0, Lb/g/d/c$b;->P:I

    iput v3, p0, Lb/g/d/c$b;->Q:I

    iput v3, p0, Lb/g/d/c$b;->R:I

    iput v3, p0, Lb/g/d/c$b;->S:I

    iput v2, p0, Lb/g/d/c$b;->T:F

    iput v2, p0, Lb/g/d/c$b;->U:F

    iput v0, p0, Lb/g/d/c$b;->V:I

    iput v0, p0, Lb/g/d/c$b;->W:I

    iput v0, p0, Lb/g/d/c$b;->X:I

    iput v0, p0, Lb/g/d/c$b;->Y:I

    iput v1, p0, Lb/g/d/c$b;->Z:I

    iput v1, p0, Lb/g/d/c$b;->a0:I

    iput v1, p0, Lb/g/d/c$b;->b0:I

    iput v1, p0, Lb/g/d/c$b;->c0:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lb/g/d/c$b;->d0:F

    iput v2, p0, Lb/g/d/c$b;->e0:F

    iput v1, p0, Lb/g/d/c$b;->f0:I

    iput v0, p0, Lb/g/d/c$b;->g0:I

    iput v1, p0, Lb/g/d/c$b;->h0:I

    iput-boolean v0, p0, Lb/g/d/c$b;->l0:Z

    iput-boolean v0, p0, Lb/g/d/c$b;->m0:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/g/d/c$b;->n0:Z

    iput v0, p0, Lb/g/d/c$b;->o0:I

    return-void
.end method


# virtual methods
.method public a(Lb/g/d/c$b;)V
    .locals 2

    iget-boolean v0, p1, Lb/g/d/c$b;->a:Z

    iput-boolean v0, p0, Lb/g/d/c$b;->a:Z

    iget v0, p1, Lb/g/d/c$b;->c:I

    iput v0, p0, Lb/g/d/c$b;->c:I

    iget-boolean v0, p1, Lb/g/d/c$b;->b:Z

    iput-boolean v0, p0, Lb/g/d/c$b;->b:Z

    iget v0, p1, Lb/g/d/c$b;->d:I

    iput v0, p0, Lb/g/d/c$b;->d:I

    iget v0, p1, Lb/g/d/c$b;->e:I

    iput v0, p0, Lb/g/d/c$b;->e:I

    iget v0, p1, Lb/g/d/c$b;->f:I

    iput v0, p0, Lb/g/d/c$b;->f:I

    iget v0, p1, Lb/g/d/c$b;->g:F

    iput v0, p0, Lb/g/d/c$b;->g:F

    iget v0, p1, Lb/g/d/c$b;->h:I

    iput v0, p0, Lb/g/d/c$b;->h:I

    iget v0, p1, Lb/g/d/c$b;->i:I

    iput v0, p0, Lb/g/d/c$b;->i:I

    iget v0, p1, Lb/g/d/c$b;->j:I

    iput v0, p0, Lb/g/d/c$b;->j:I

    iget v0, p1, Lb/g/d/c$b;->k:I

    iput v0, p0, Lb/g/d/c$b;->k:I

    iget v0, p1, Lb/g/d/c$b;->l:I

    iput v0, p0, Lb/g/d/c$b;->l:I

    iget v0, p1, Lb/g/d/c$b;->m:I

    iput v0, p0, Lb/g/d/c$b;->m:I

    iget v0, p1, Lb/g/d/c$b;->n:I

    iput v0, p0, Lb/g/d/c$b;->n:I

    iget v0, p1, Lb/g/d/c$b;->o:I

    iput v0, p0, Lb/g/d/c$b;->o:I

    iget v0, p1, Lb/g/d/c$b;->p:I

    iput v0, p0, Lb/g/d/c$b;->p:I

    iget v0, p1, Lb/g/d/c$b;->q:I

    iput v0, p0, Lb/g/d/c$b;->q:I

    iget v0, p1, Lb/g/d/c$b;->r:I

    iput v0, p0, Lb/g/d/c$b;->r:I

    iget v0, p1, Lb/g/d/c$b;->s:I

    iput v0, p0, Lb/g/d/c$b;->s:I

    iget v0, p1, Lb/g/d/c$b;->t:I

    iput v0, p0, Lb/g/d/c$b;->t:I

    iget v0, p1, Lb/g/d/c$b;->u:I

    iput v0, p0, Lb/g/d/c$b;->u:I

    iget v0, p1, Lb/g/d/c$b;->v:I

    iput v0, p0, Lb/g/d/c$b;->v:I

    iget v0, p1, Lb/g/d/c$b;->w:F

    iput v0, p0, Lb/g/d/c$b;->w:F

    iget v0, p1, Lb/g/d/c$b;->x:F

    iput v0, p0, Lb/g/d/c$b;->x:F

    iget-object v0, p1, Lb/g/d/c$b;->y:Ljava/lang/String;

    iput-object v0, p0, Lb/g/d/c$b;->y:Ljava/lang/String;

    iget v0, p1, Lb/g/d/c$b;->z:I

    iput v0, p0, Lb/g/d/c$b;->z:I

    iget v0, p1, Lb/g/d/c$b;->A:I

    iput v0, p0, Lb/g/d/c$b;->A:I

    iget v0, p1, Lb/g/d/c$b;->B:F

    iput v0, p0, Lb/g/d/c$b;->B:F

    iget v0, p1, Lb/g/d/c$b;->C:I

    iput v0, p0, Lb/g/d/c$b;->C:I

    iget v0, p1, Lb/g/d/c$b;->D:I

    iput v0, p0, Lb/g/d/c$b;->D:I

    iget v0, p1, Lb/g/d/c$b;->E:I

    iput v0, p0, Lb/g/d/c$b;->E:I

    iget v0, p1, Lb/g/d/c$b;->F:I

    iput v0, p0, Lb/g/d/c$b;->F:I

    iget v0, p1, Lb/g/d/c$b;->G:I

    iput v0, p0, Lb/g/d/c$b;->G:I

    iget v0, p1, Lb/g/d/c$b;->H:I

    iput v0, p0, Lb/g/d/c$b;->H:I

    iget v0, p1, Lb/g/d/c$b;->I:I

    iput v0, p0, Lb/g/d/c$b;->I:I

    iget v0, p1, Lb/g/d/c$b;->J:I

    iput v0, p0, Lb/g/d/c$b;->J:I

    iget v0, p1, Lb/g/d/c$b;->K:I

    iput v0, p0, Lb/g/d/c$b;->K:I

    iget v0, p1, Lb/g/d/c$b;->L:I

    iput v0, p0, Lb/g/d/c$b;->L:I

    iget v0, p1, Lb/g/d/c$b;->M:I

    iput v0, p0, Lb/g/d/c$b;->M:I

    iget v0, p1, Lb/g/d/c$b;->N:I

    iput v0, p0, Lb/g/d/c$b;->N:I

    iget v0, p1, Lb/g/d/c$b;->O:I

    iput v0, p0, Lb/g/d/c$b;->O:I

    iget v0, p1, Lb/g/d/c$b;->P:I

    iput v0, p0, Lb/g/d/c$b;->P:I

    iget v0, p1, Lb/g/d/c$b;->Q:I

    iput v0, p0, Lb/g/d/c$b;->Q:I

    iget v0, p1, Lb/g/d/c$b;->R:I

    iput v0, p0, Lb/g/d/c$b;->R:I

    iget v0, p1, Lb/g/d/c$b;->S:I

    iput v0, p0, Lb/g/d/c$b;->S:I

    iget v0, p1, Lb/g/d/c$b;->T:F

    iput v0, p0, Lb/g/d/c$b;->T:F

    iget v0, p1, Lb/g/d/c$b;->U:F

    iput v0, p0, Lb/g/d/c$b;->U:F

    iget v0, p1, Lb/g/d/c$b;->V:I

    iput v0, p0, Lb/g/d/c$b;->V:I

    iget v0, p1, Lb/g/d/c$b;->W:I

    iput v0, p0, Lb/g/d/c$b;->W:I

    iget v0, p1, Lb/g/d/c$b;->X:I

    iput v0, p0, Lb/g/d/c$b;->X:I

    iget v0, p1, Lb/g/d/c$b;->Y:I

    iput v0, p0, Lb/g/d/c$b;->Y:I

    iget v0, p1, Lb/g/d/c$b;->Z:I

    iput v0, p0, Lb/g/d/c$b;->Z:I

    iget v0, p1, Lb/g/d/c$b;->a0:I

    iput v0, p0, Lb/g/d/c$b;->a0:I

    iget v0, p1, Lb/g/d/c$b;->b0:I

    iput v0, p0, Lb/g/d/c$b;->b0:I

    iget v0, p1, Lb/g/d/c$b;->c0:I

    iput v0, p0, Lb/g/d/c$b;->c0:I

    iget v0, p1, Lb/g/d/c$b;->d0:F

    iput v0, p0, Lb/g/d/c$b;->d0:F

    iget v0, p1, Lb/g/d/c$b;->e0:F

    iput v0, p0, Lb/g/d/c$b;->e0:F

    iget v0, p1, Lb/g/d/c$b;->f0:I

    iput v0, p0, Lb/g/d/c$b;->f0:I

    iget v0, p1, Lb/g/d/c$b;->g0:I

    iput v0, p0, Lb/g/d/c$b;->g0:I

    iget v0, p1, Lb/g/d/c$b;->h0:I

    iput v0, p0, Lb/g/d/c$b;->h0:I

    iget-object v0, p1, Lb/g/d/c$b;->k0:Ljava/lang/String;

    iput-object v0, p0, Lb/g/d/c$b;->k0:Ljava/lang/String;

    iget-object v0, p1, Lb/g/d/c$b;->i0:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lb/g/d/c$b;->i0:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lb/g/d/c$b;->i0:[I

    :goto_0
    iget-object v0, p1, Lb/g/d/c$b;->j0:Ljava/lang/String;

    iput-object v0, p0, Lb/g/d/c$b;->j0:Ljava/lang/String;

    iget-boolean v0, p1, Lb/g/d/c$b;->l0:Z

    iput-boolean v0, p0, Lb/g/d/c$b;->l0:Z

    iget-boolean v0, p1, Lb/g/d/c$b;->m0:Z

    iput-boolean v0, p0, Lb/g/d/c$b;->m0:Z

    iget-boolean v0, p1, Lb/g/d/c$b;->n0:Z

    iput-boolean v0, p0, Lb/g/d/c$b;->n0:Z

    iget p1, p1, Lb/g/d/c$b;->o0:I

    iput p1, p0, Lb/g/d/c$b;->o0:I

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    sget-object v0, Lb/g/d/f;->Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lb/g/d/c$b;->b:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_13

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget-object v4, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const/16 v5, 0x50

    if-eq v4, v5, :cond_12

    const/16 v5, 0x51

    if-eq v4, v5, :cond_11

    const/16 v5, 0x61

    if-eq v4, v5, :cond_10

    const/4 v5, -0x1

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    const/high16 v6, 0x3f800000    # 1.0f

    const-string v7, "   "

    const-string v8, "ConstraintSet"

    packed-switch v4, :pswitch_data_3

    packed-switch v4, :pswitch_data_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown attribute 0x"

    goto/16 :goto_1

    .line 1
    :pswitch_0
    invoke-static {p0, p1, v3, p2}, Lb/g/d/c;->l(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_2

    :pswitch_1
    invoke-static {p0, p1, v3, v1}, Lb/g/d/c;->l(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_2

    :pswitch_2
    iget v4, p0, Lb/g/d/c$b;->W:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->W:I

    goto/16 :goto_2

    :pswitch_3
    iget v4, p0, Lb/g/d/c$b;->V:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->V:I

    goto/16 :goto_2

    :pswitch_4
    iget v4, p0, Lb/g/d/c$b;->T:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->T:F

    goto/16 :goto_2

    :pswitch_5
    iget v4, p0, Lb/g/d/c$b;->U:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->U:F

    goto/16 :goto_2

    :pswitch_6
    iget v4, p0, Lb/g/d/c$b;->x:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->x:F

    goto/16 :goto_2

    :pswitch_7
    iget v4, p0, Lb/g/d/c$b;->l:I

    .line 2
    sget-object v6, Lb/g/d/c;->g:[I

    .line 3
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-ne v4, v5, :cond_0

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 4
    :cond_0
    iput v4, p0, Lb/g/d/c$b;->l:I

    goto/16 :goto_2

    :pswitch_8
    iget v4, p0, Lb/g/d/c$b;->m:I

    .line 5
    sget-object v6, Lb/g/d/c;->g:[I

    .line 6
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 7
    :cond_1
    iput v4, p0, Lb/g/d/c$b;->m:I

    goto/16 :goto_2

    :pswitch_9
    iget v4, p0, Lb/g/d/c$b;->H:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->H:I

    goto/16 :goto_2

    :pswitch_a
    iget v4, p0, Lb/g/d/c$b;->t:I

    .line 8
    sget-object v6, Lb/g/d/c;->g:[I

    .line 9
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-ne v4, v5, :cond_2

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 10
    :cond_2
    iput v4, p0, Lb/g/d/c$b;->t:I

    goto/16 :goto_2

    :pswitch_b
    iget v4, p0, Lb/g/d/c$b;->s:I

    .line 11
    sget-object v6, Lb/g/d/c;->g:[I

    .line 12
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-ne v4, v5, :cond_3

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 13
    :cond_3
    iput v4, p0, Lb/g/d/c$b;->s:I

    goto/16 :goto_2

    :pswitch_c
    iget v4, p0, Lb/g/d/c$b;->K:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->K:I

    goto/16 :goto_2

    :pswitch_d
    iget v4, p0, Lb/g/d/c$b;->k:I

    .line 14
    sget-object v6, Lb/g/d/c;->g:[I

    .line 15
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-ne v4, v5, :cond_4

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 16
    :cond_4
    iput v4, p0, Lb/g/d/c$b;->k:I

    goto/16 :goto_2

    :pswitch_e
    iget v4, p0, Lb/g/d/c$b;->j:I

    .line 17
    sget-object v6, Lb/g/d/c;->g:[I

    .line 18
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-ne v4, v5, :cond_5

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 19
    :cond_5
    iput v4, p0, Lb/g/d/c$b;->j:I

    goto/16 :goto_2

    :pswitch_f
    iget v4, p0, Lb/g/d/c$b;->G:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->G:I

    goto/16 :goto_2

    :pswitch_10
    iget v4, p0, Lb/g/d/c$b;->E:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->E:I

    goto/16 :goto_2

    :pswitch_11
    iget v4, p0, Lb/g/d/c$b;->i:I

    .line 20
    sget-object v6, Lb/g/d/c;->g:[I

    .line 21
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-ne v4, v5, :cond_6

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 22
    :cond_6
    iput v4, p0, Lb/g/d/c$b;->i:I

    goto/16 :goto_2

    :pswitch_12
    iget v4, p0, Lb/g/d/c$b;->h:I

    .line 23
    sget-object v6, Lb/g/d/c;->g:[I

    .line 24
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-ne v4, v5, :cond_7

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 25
    :cond_7
    iput v4, p0, Lb/g/d/c$b;->h:I

    goto/16 :goto_2

    :pswitch_13
    iget v4, p0, Lb/g/d/c$b;->F:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->F:I

    goto/16 :goto_2

    :pswitch_14
    iget v4, p0, Lb/g/d/c$b;->c:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->c:I

    goto/16 :goto_2

    :pswitch_15
    iget v4, p0, Lb/g/d/c$b;->d:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->d:I

    goto/16 :goto_2

    :pswitch_16
    iget v4, p0, Lb/g/d/c$b;->w:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->w:F

    goto/16 :goto_2

    :pswitch_17
    iget v4, p0, Lb/g/d/c$b;->g:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->g:F

    goto/16 :goto_2

    :pswitch_18
    iget v4, p0, Lb/g/d/c$b;->f:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->f:I

    goto/16 :goto_2

    :pswitch_19
    iget v4, p0, Lb/g/d/c$b;->e:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->e:I

    goto/16 :goto_2

    :pswitch_1a
    iget v4, p0, Lb/g/d/c$b;->N:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->N:I

    goto/16 :goto_2

    :pswitch_1b
    iget v4, p0, Lb/g/d/c$b;->R:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->R:I

    goto/16 :goto_2

    :pswitch_1c
    iget v4, p0, Lb/g/d/c$b;->O:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->O:I

    goto/16 :goto_2

    :pswitch_1d
    iget v4, p0, Lb/g/d/c$b;->M:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->M:I

    goto/16 :goto_2

    :pswitch_1e
    iget v4, p0, Lb/g/d/c$b;->Q:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->Q:I

    goto/16 :goto_2

    :pswitch_1f
    iget v4, p0, Lb/g/d/c$b;->P:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->P:I

    goto/16 :goto_2

    :pswitch_20
    iget v4, p0, Lb/g/d/c$b;->u:I

    .line 26
    sget-object v6, Lb/g/d/c;->g:[I

    .line 27
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-ne v4, v5, :cond_8

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 28
    :cond_8
    iput v4, p0, Lb/g/d/c$b;->u:I

    goto/16 :goto_2

    :pswitch_21
    iget v4, p0, Lb/g/d/c$b;->v:I

    .line 29
    sget-object v6, Lb/g/d/c;->g:[I

    .line 30
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-ne v4, v5, :cond_9

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 31
    :cond_9
    iput v4, p0, Lb/g/d/c$b;->v:I

    goto/16 :goto_2

    :pswitch_22
    iget v4, p0, Lb/g/d/c$b;->J:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->J:I

    goto/16 :goto_2

    :pswitch_23
    iget v4, p0, Lb/g/d/c$b;->D:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->D:I

    goto/16 :goto_2

    :pswitch_24
    iget v4, p0, Lb/g/d/c$b;->C:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->C:I

    goto/16 :goto_2

    :pswitch_25
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lb/g/d/c$b;->y:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_26
    iget v4, p0, Lb/g/d/c$b;->n:I

    .line 32
    sget-object v6, Lb/g/d/c;->g:[I

    .line 33
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-ne v4, v5, :cond_a

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 34
    :cond_a
    iput v4, p0, Lb/g/d/c$b;->n:I

    goto/16 :goto_2

    :pswitch_27
    iget v4, p0, Lb/g/d/c$b;->o:I

    .line 35
    sget-object v6, Lb/g/d/c;->g:[I

    .line 36
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-ne v4, v5, :cond_b

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 37
    :cond_b
    iput v4, p0, Lb/g/d/c$b;->o:I

    goto/16 :goto_2

    :pswitch_28
    iget v4, p0, Lb/g/d/c$b;->I:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->I:I

    goto/16 :goto_2

    :pswitch_29
    iget v4, p0, Lb/g/d/c$b;->p:I

    .line 38
    sget-object v6, Lb/g/d/c;->g:[I

    .line 39
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-ne v4, v5, :cond_c

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 40
    :cond_c
    iput v4, p0, Lb/g/d/c$b;->p:I

    goto/16 :goto_2

    :pswitch_2a
    iget v4, p0, Lb/g/d/c$b;->c0:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->c0:I

    goto/16 :goto_2

    :pswitch_2b
    iget v4, p0, Lb/g/d/c$b;->b0:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->b0:I

    goto/16 :goto_2

    :pswitch_2c
    iget v4, p0, Lb/g/d/c$b;->a0:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->a0:I

    goto/16 :goto_2

    :pswitch_2d
    iget v4, p0, Lb/g/d/c$b;->Z:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->Z:I

    goto/16 :goto_2

    :pswitch_2e
    iget v4, p0, Lb/g/d/c$b;->Y:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->Y:I

    goto/16 :goto_2

    :pswitch_2f
    iget v4, p0, Lb/g/d/c$b;->X:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->X:I

    goto/16 :goto_2

    :pswitch_30
    iget v4, p0, Lb/g/d/c$b;->B:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->B:F

    goto/16 :goto_2

    :pswitch_31
    iget v4, p0, Lb/g/d/c$b;->A:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->A:I

    goto/16 :goto_2

    :pswitch_32
    iget v4, p0, Lb/g/d/c$b;->z:I

    .line 41
    sget-object v6, Lb/g/d/c;->g:[I

    .line 42
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-ne v4, v5, :cond_d

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 43
    :cond_d
    iput v4, p0, Lb/g/d/c$b;->z:I

    goto/16 :goto_2

    :pswitch_33
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lb/g/d/c$b;->k0:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unused attribute 0x"

    goto/16 :goto_1

    :pswitch_35
    iget-boolean v4, p0, Lb/g/d/c$b;->n0:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lb/g/d/c$b;->n0:Z

    goto/16 :goto_2

    :pswitch_36
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lb/g/d/c$b;->j0:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_37
    iget v4, p0, Lb/g/d/c$b;->g0:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->g0:I

    goto/16 :goto_2

    :pswitch_38
    iget v4, p0, Lb/g/d/c$b;->f0:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->f0:I

    goto/16 :goto_2

    :pswitch_39
    const-string v3, "CURRENTLY UNSUPPORTED"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_3a
    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->e0:F

    goto/16 :goto_2

    :pswitch_3b
    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->d0:F

    goto :goto_2

    .line 44
    :pswitch_3c
    iget v4, p0, Lb/g/d/c$b;->S:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->S:I

    goto :goto_2

    :pswitch_3d
    iget v4, p0, Lb/g/d/c$b;->L:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->L:I

    goto :goto_2

    :pswitch_3e
    iget v4, p0, Lb/g/d/c$b;->r:I

    .line 45
    sget-object v6, Lb/g/d/c;->g:[I

    .line 46
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-ne v4, v5, :cond_e

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 47
    :cond_e
    iput v4, p0, Lb/g/d/c$b;->r:I

    goto :goto_2

    :pswitch_3f
    iget v4, p0, Lb/g/d/c$b;->q:I

    .line 48
    sget-object v6, Lb/g/d/c;->g:[I

    .line 49
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-ne v4, v5, :cond_f

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 50
    :cond_f
    iput v4, p0, Lb/g/d/c$b;->q:I

    goto :goto_2

    .line 51
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lb/g/d/c$b;->p0:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 52
    :cond_10
    iget v4, p0, Lb/g/d/c$b;->o0:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lb/g/d/c$b;->o0:I

    goto :goto_2

    :cond_11
    iget-boolean v4, p0, Lb/g/d/c$b;->m0:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lb/g/d/c$b;->m0:Z

    goto :goto_2

    :cond_12
    iget-boolean v4, p0, Lb/g/d/c$b;->l0:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lb/g/d/c$b;->l0:Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3d
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x45
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x5b
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
    .end packed-switch
.end method
