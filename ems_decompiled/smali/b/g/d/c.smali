.class public Lb/g/d/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/d/c$a;,
        Lb/g/d/c$c;,
        Lb/g/d/c$d;,
        Lb/g/d/c$e;,
        Lb/g/d/c$b;
    }
.end annotation


# static fields
.field public static final g:[I

.field public static h:Landroid/util/SparseIntArray;

.field public static i:Landroid/util/SparseIntArray;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lb/g/d/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lb/g/d/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lb/g/d/c;->g:[I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget-object v1, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v2, Lb/g/d/f;->Constraint_layout_constraintLeft_toLeftOf:I

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v2, Lb/g/d/f;->Constraint_layout_constraintLeft_toRightOf:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v2, Lb/g/d/f;->Constraint_layout_constraintRight_toLeftOf:I

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v2, Lb/g/d/f;->Constraint_layout_constraintRight_toRightOf:I

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v2, Lb/g/d/f;->Constraint_layout_constraintTop_toTopOf:I

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v2, Lb/g/d/f;->Constraint_layout_constraintTop_toBottomOf:I

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v2, Lb/g/d/f;->Constraint_layout_constraintBottom_toTopOf:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v2, Lb/g/d/f;->Constraint_layout_constraintBottom_toBottomOf:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintBaseline_toTopOf:I

    const/16 v2, 0x5b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintBaseline_toBottomOf:I

    const/16 v2, 0x5c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_editor_absoluteY:I

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintGuide_begin:I

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintGuide_end:I

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintGuide_percent:I

    const/16 v4, 0x13

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_orientation:I

    const/16 v4, 0x1b

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintStart_toEndOf:I

    const/16 v5, 0x20

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintStart_toStartOf:I

    const/16 v5, 0x21

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintEnd_toStartOf:I

    const/16 v5, 0xa

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintEnd_toEndOf:I

    const/16 v5, 0x9

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_goneMarginLeft:I

    const/16 v5, 0xd

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_goneMarginTop:I

    const/16 v6, 0x10

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_goneMarginRight:I

    const/16 v7, 0xe

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_goneMarginBottom:I

    const/16 v8, 0xb

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_goneMarginStart:I

    const/16 v9, 0xf

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_goneMarginEnd:I

    const/16 v10, 0xc

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintVertical_weight:I

    const/16 v11, 0x28

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintHorizontal_weight:I

    const/16 v12, 0x27

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintHorizontal_chainStyle:I

    const/16 v13, 0x29

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintVertical_chainStyle:I

    const/16 v14, 0x2a

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintHorizontal_bias:I

    const/16 v15, 0x14

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintVertical_bias:I

    const/16 v15, 0x25

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintDimensionRatio:I

    const/4 v15, 0x5

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintLeft_creator:I

    const/16 v15, 0x57

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_layout_marginLeft:I

    const/16 v15, 0x18

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_layout_marginRight:I

    const/16 v15, 0x1c

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_layout_marginStart:I

    const/16 v15, 0x1f

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_layout_marginEnd:I

    const/16 v15, 0x8

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_layout_marginTop:I

    const/16 v15, 0x22

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_layout_marginBottom:I

    const/4 v15, 0x2

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_layout_width:I

    const/16 v15, 0x17

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_layout_height:I

    const/16 v15, 0x15

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintWidth:I

    const/16 v15, 0x5f

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintHeight:I

    const/16 v15, 0x60

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_visibility:I

    const/16 v15, 0x16

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_alpha:I

    const/16 v15, 0x2b

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_elevation:I

    const/16 v15, 0x2c

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_rotationX:I

    const/16 v15, 0x2d

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_rotationY:I

    const/16 v15, 0x2e

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_rotation:I

    const/16 v15, 0x3c

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_scaleX:I

    const/16 v15, 0x2f

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_scaleY:I

    const/16 v15, 0x30

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_transformPivotX:I

    const/16 v15, 0x31

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_transformPivotY:I

    const/16 v15, 0x32

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_translationX:I

    const/16 v15, 0x33

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_translationY:I

    const/16 v15, 0x34

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_translationZ:I

    const/16 v15, 0x35

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintWidth_default:I

    const/16 v15, 0x36

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintHeight_default:I

    const/16 v15, 0x37

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintWidth_max:I

    const/16 v15, 0x38

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintHeight_max:I

    const/16 v15, 0x39

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintWidth_min:I

    const/16 v15, 0x3a

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintHeight_min:I

    const/16 v15, 0x3b

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintCircle:I

    const/16 v15, 0x3d

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintCircleRadius:I

    const/16 v15, 0x3e

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintCircleAngle:I

    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_animateRelativeTo:I

    const/16 v15, 0x40

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_transitionEasing:I

    const/16 v15, 0x41

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_drawPath:I

    const/16 v15, 0x42

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_transitionPathRotate:I

    const/16 v15, 0x43

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_motionStagger:I

    const/16 v15, 0x4f

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_android_id:I

    const/16 v15, 0x26

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_motionProgress:I

    const/16 v15, 0x44

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintWidth_percent:I

    const/16 v15, 0x45

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintHeight_percent:I

    const/16 v15, 0x46

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_wrapBehaviorInParent:I

    const/16 v15, 0x61

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_chainUseRtl:I

    const/16 v15, 0x47

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_barrierDirection:I

    const/16 v15, 0x48

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_barrierMargin:I

    const/16 v15, 0x49

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_constraint_referenced_ids:I

    const/16 v15, 0x4a

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_barrierAllowsGoneWidgets:I

    const/16 v15, 0x4b

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_pathMotionArc:I

    const/16 v15, 0x4c

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constraintTag:I

    const/16 v15, 0x4d

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_visibilityMode:I

    const/16 v15, 0x4e

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constrainedWidth:I

    const/16 v15, 0x50

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_layout_constrainedHeight:I

    const/16 v15, 0x51

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_polarRelativeTo:I

    const/16 v15, 0x52

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_transformPivotTarget:I

    const/16 v15, 0x53

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_quantizeMotionSteps:I

    const/16 v15, 0x54

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_quantizeMotionPhase:I

    const/16 v15, 0x55

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->Constraint_quantizeMotionInterpolator:I

    const/16 v15, 0x56

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_editor_absoluteY:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_orientation:I

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_goneMarginLeft:I

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_goneMarginTop:I

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_goneMarginRight:I

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_goneMarginBottom:I

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_goneMarginStart:I

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_goneMarginEnd:I

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintVertical_weight:I

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintHorizontal_weight:I

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintHorizontal_chainStyle:I

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintVertical_chainStyle:I

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintVertical_bias:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintLeft_creator:I

    const/16 v2, 0x57

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_layout_marginLeft:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_layout_marginRight:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_layout_marginStart:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintWidth:I

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintHeight:I

    const/16 v2, 0x60

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_rotation:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_animateRelativeTo:I

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_transitionEasing:I

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_drawPath:I

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_transitionPathRotate:I

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_motionStagger:I

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_motionTarget:I

    const/16 v2, 0x62

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_motionProgress:I

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_barrierMargin:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_constraint_referenced_ids:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_pathMotionArc:I

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constraintTag:I

    const/16 v2, 0x4d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_visibilityMode:I

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constrainedWidth:I

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_constrainedHeight:I

    const/16 v2, 0x51

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_polarRelativeTo:I

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_transformPivotTarget:I

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_quantizeMotionSteps:I

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_quantizeMotionPhase:I

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_quantizeMotionInterpolator:I

    const/16 v2, 0x56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->ConstraintOverride_layout_wrapBehaviorInParent:I

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lb/g/d/c;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lb/g/d/c;->c:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/g/d/c;->d:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/g/d/c;->e:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/g/d/c;->f:Ljava/util/HashMap;

    return-void
.end method

.method public static d(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lb/g/d/c$a;
    .locals 2

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    new-instance v0, Lb/g/d/c$a;

    invoke-direct {v0}, Lb/g/d/c$a;-><init>()V

    sget-object v1, Lb/g/d/f;->ConstraintOverride:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-static {v0, p0}, Lb/g/d/c;->n(Lb/g/d/c$a;Landroid/content/res/TypedArray;)V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static l(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    const/16 v2, 0x15

    const/16 v3, 0x17

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eq v0, v1, :cond_b

    const/4 v1, -0x2

    if-eq v0, v6, :cond_2

    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, -0x4

    if-eq p1, p2, :cond_4

    const/4 p2, -0x3

    if-eq p1, p2, :cond_1

    if-eq p1, v1, :cond_3

    if-eq p1, v5, :cond_3

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    :cond_3
    move v1, p1

    :goto_0
    const/4 v4, 0x0

    :cond_4
    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p1, :cond_6

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-nez p3, :cond_5

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    goto :goto_2

    :cond_5
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    goto :goto_2

    :cond_6
    instance-of p1, p0, Lb/g/d/c$b;

    if-eqz p1, :cond_8

    check-cast p0, Lb/g/d/c$b;

    if-nez p3, :cond_7

    iput v1, p0, Lb/g/d/c$b;->c:I

    iput-boolean v4, p0, Lb/g/d/c$b;->l0:Z

    goto :goto_2

    :cond_7
    iput v1, p0, Lb/g/d/c$b;->d:I

    iput-boolean v4, p0, Lb/g/d/c$b;->m0:Z

    goto :goto_2

    :cond_8
    instance-of p1, p0, Lb/g/d/c$a$a;

    if-eqz p1, :cond_a

    check-cast p0, Lb/g/d/c$a$a;

    if-nez p3, :cond_9

    invoke-virtual {p0, v3, v1}, Lb/g/d/c$a$a;->b(II)V

    const/16 p1, 0x50

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v2, v1}, Lb/g/d/c$a$a;->b(II)V

    const/16 p1, 0x51

    :goto_1
    invoke-virtual {p0, p1, v4}, Lb/g/d/c$a$a;->d(IZ)V

    :cond_a
    :goto_2
    return-void

    :cond_b
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    goto/16 :goto_6

    :cond_c
    const/16 p2, 0x3d

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez p2, :cond_1c

    add-int/2addr v0, v5

    if-ge p2, v0, :cond_1c

    invoke-virtual {p1, v7, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr p2, v4

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ratio"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p2, :cond_e

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-nez p3, :cond_d

    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_3

    :cond_d
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_3
    invoke-static {p0, p1}, Lb/g/d/c;->m(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_e
    instance-of p2, p0, Lb/g/d/c$b;

    if-eqz p2, :cond_f

    check-cast p0, Lb/g/d/c$b;

    iput-object p1, p0, Lb/g/d/c$b;->y:Ljava/lang/String;

    goto/16 :goto_6

    :cond_f
    instance-of p2, p0, Lb/g/d/c$a$a;

    if-eqz p2, :cond_1c

    check-cast p0, Lb/g/d/c$a$a;

    invoke-virtual {p0, v6, p1}, Lb/g/d/c$a$a;->c(ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_10
    const-string v0, "weight"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p2, :cond_12

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-nez p3, :cond_11

    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:F

    goto/16 :goto_6

    :cond_11
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:F

    goto/16 :goto_6

    :cond_12
    instance-of p2, p0, Lb/g/d/c$b;

    if-eqz p2, :cond_14

    check-cast p0, Lb/g/d/c$b;

    if-nez p3, :cond_13

    iput v7, p0, Lb/g/d/c$b;->c:I

    iput p1, p0, Lb/g/d/c$b;->U:F

    goto/16 :goto_6

    :cond_13
    iput v7, p0, Lb/g/d/c$b;->d:I

    iput p1, p0, Lb/g/d/c$b;->T:F

    goto/16 :goto_6

    :cond_14
    instance-of p2, p0, Lb/g/d/c$a$a;

    if-eqz p2, :cond_1c

    check-cast p0, Lb/g/d/c$a$a;

    if-nez p3, :cond_15

    invoke-virtual {p0, v3, v7}, Lb/g/d/c$a$a;->b(II)V

    const/16 p2, 0x27

    goto :goto_4

    :cond_15
    invoke-virtual {p0, v2, v7}, Lb/g/d/c$a$a;->b(II)V

    const/16 p2, 0x28

    :goto_4
    invoke-virtual {p0, p2, p1}, Lb/g/d/c$a$a;->a(IF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :cond_16
    const-string v0, "parent"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/high16 p2, 0x3f800000    # 1.0f

    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v0, 0x2

    if-eqz p2, :cond_18

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-nez p3, :cond_17

    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    goto :goto_6

    :cond_17
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    goto :goto_6

    :cond_18
    instance-of p2, p0, Lb/g/d/c$b;

    if-eqz p2, :cond_1a

    check-cast p0, Lb/g/d/c$b;

    if-nez p3, :cond_19

    iput v7, p0, Lb/g/d/c$b;->c:I

    iput p1, p0, Lb/g/d/c$b;->d0:F

    iput v0, p0, Lb/g/d/c$b;->X:I

    goto :goto_6

    :cond_19
    iput v7, p0, Lb/g/d/c$b;->d:I

    iput p1, p0, Lb/g/d/c$b;->e0:F

    iput v0, p0, Lb/g/d/c$b;->Y:I

    goto :goto_6

    :cond_1a
    instance-of p1, p0, Lb/g/d/c$a$a;

    if-eqz p1, :cond_1c

    check-cast p0, Lb/g/d/c$a$a;

    if-nez p3, :cond_1b

    invoke-virtual {p0, v3, v7}, Lb/g/d/c$a$a;->b(II)V

    const/16 p1, 0x36

    goto :goto_5

    :cond_1b
    invoke-virtual {p0, v2, v7}, Lb/g/d/c$a$a;->b(II)V

    const/16 p1, 0x37

    :goto_5
    invoke-virtual {p0, p1, v0}, Lb/g/d/c$a$a;->b(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1c
    :goto_6
    return-void
.end method

.method public static m(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-lez v1, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "W"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "H"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    add-int/2addr v1, v3

    move v4, v2

    move v2, v1

    :cond_2
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    sub-int/2addr v0, v3

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v5, v0, v2

    if-lez v5, :cond_5

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    if-ne v4, v3, :cond_3

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    goto :goto_1

    :cond_3
    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    :goto_1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:Ljava/lang/String;

    return-void
.end method

.method public static n(Lb/g/d/c$a;Landroid/content/res/TypedArray;)V
    .locals 14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    new-instance v2, Lb/g/d/c$a$a;

    invoke-direct {v2}, Lb/g/d/c$a$a;-><init>()V

    iput-object v2, p0, Lb/g/d/c$a;->h:Lb/g/d/c$a$a;

    iget-object v3, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lb/g/d/c$c;->a:Z

    iget-object v3, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iput-boolean v4, v3, Lb/g/d/c$b;->b:Z

    iget-object v3, p0, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iput-boolean v4, v3, Lb/g/d/c$d;->a:Z

    iget-object v3, p0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iput-boolean v4, v3, Lb/g/d/c$e;->a:Z

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_8

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    sget-object v6, Lb/g/d/c;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const-string v8, "   "

    const/4 v9, 0x3

    const/16 v10, 0x15

    const-string v11, "ConstraintSet"

    const/4 v12, 0x1

    const/4 v13, -0x1

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown attribute 0x"

    goto/16 :goto_10

    :pswitch_1
    sget-boolean v6, Landroidx/constraintlayout/motion/widget/MotionLayout;->O0:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lb/g/d/c$a;->a:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lb/g/d/c$a;->a:I

    if-ne v6, v13, :cond_7

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    iget v6, v6, Landroid/util/TypedValue;->type:I

    if-ne v6, v9, :cond_1

    :goto_1
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lb/g/d/c$a;->b:Ljava/lang/String;

    goto/16 :goto_11

    :cond_1
    iget v6, p0, Lb/g/d/c$a;->a:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lb/g/d/c$a;->a:I

    goto/16 :goto_11

    :pswitch_2
    const/16 v6, 0x61

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->o0:I

    goto/16 :goto_8

    :pswitch_3
    invoke-static {v2, p1, v5, v12}, Lb/g/d/c;->l(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_11

    :pswitch_4
    invoke-static {v2, p1, v5, v4}, Lb/g/d/c;->l(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_11

    :pswitch_5
    const/16 v6, 0x5e

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->S:I

    goto/16 :goto_e

    :pswitch_6
    const/16 v6, 0x5d

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->L:I

    goto/16 :goto_e

    :pswitch_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unused attribute 0x"

    goto/16 :goto_10

    :pswitch_8
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    iget v6, v6, Landroid/util/TypedValue;->type:I

    const/4 v7, -0x2

    const/16 v8, 0x59

    const/16 v10, 0x58

    if-ne v6, v12, :cond_2

    iget-object v6, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    invoke-virtual {p1, v5, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v6, Lb/g/d/c$c;->n:I

    iget-object v5, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v5, v5, Lb/g/d/c$c;->n:I

    invoke-virtual {v2, v8, v5}, Lb/g/d/c$a$a;->b(II)V

    iget-object v5, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v6, v5, Lb/g/d/c$c;->n:I

    if-eq v6, v13, :cond_7

    goto :goto_2

    :cond_2
    if-ne v6, v9, :cond_4

    iget-object v6, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lb/g/d/c$c;->l:Ljava/lang/String;

    const/16 v6, 0x5a

    iget-object v9, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget-object v9, v9, Lb/g/d/c$c;->l:Ljava/lang/String;

    invoke-virtual {v2, v6, v9}, Lb/g/d/c$a$a;->c(ILjava/lang/String;)V

    iget-object v6, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget-object v6, v6, Lb/g/d/c$c;->l:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    invoke-virtual {p1, v5, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v6, Lb/g/d/c$c;->n:I

    iget-object v5, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v5, v5, Lb/g/d/c$c;->n:I

    invoke-virtual {v2, v8, v5}, Lb/g/d/c$a$a;->b(II)V

    iget-object v5, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    :goto_2
    iput v7, v5, Lb/g/d/c$c;->m:I

    invoke-virtual {v2, v10, v7}, Lb/g/d/c$a$a;->b(II)V

    goto/16 :goto_11

    :cond_3
    iget-object v5, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iput v13, v5, Lb/g/d/c$c;->m:I

    invoke-virtual {v2, v10, v13}, Lb/g/d/c$a$a;->b(II)V

    goto/16 :goto_11

    :cond_4
    iget-object v6, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v7, v6, Lb/g/d/c$c;->n:I

    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v6, Lb/g/d/c$c;->m:I

    iget-object v5, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v5, v5, Lb/g/d/c$c;->m:I

    goto/16 :goto_9

    :pswitch_9
    const/16 v6, 0x55

    iget-object v7, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v7, v7, Lb/g/d/c$c;->j:F

    goto/16 :goto_a

    :pswitch_a
    const/16 v6, 0x54

    iget-object v7, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v7, v7, Lb/g/d/c$c;->k:I

    goto :goto_3

    :pswitch_b
    const/16 v6, 0x53

    iget-object v7, p0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v7, v7, Lb/g/d/c$e;->i:I

    .line 1
    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-ne v7, v13, :cond_6

    goto/16 :goto_6

    :pswitch_c
    const/16 v6, 0x52

    .line 2
    iget-object v7, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v7, v7, Lb/g/d/c$c;->c:I

    :goto_3
    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    goto/16 :goto_f

    :pswitch_d
    const/16 v6, 0x51

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget-boolean v7, v7, Lb/g/d/c$b;->m0:Z

    goto :goto_4

    :pswitch_e
    const/16 v6, 0x50

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget-boolean v7, v7, Lb/g/d/c$b;->l0:Z

    goto :goto_4

    :pswitch_f
    const/16 v6, 0x4f

    iget-object v7, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v7, v7, Lb/g/d/c$c;->g:F

    goto/16 :goto_a

    :pswitch_10
    const/16 v6, 0x4e

    iget-object v7, p0, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iget v7, v7, Lb/g/d/c$d;->c:I

    goto/16 :goto_8

    :pswitch_11
    const/16 v6, 0x4d

    goto/16 :goto_d

    :pswitch_12
    const/16 v6, 0x4c

    iget-object v7, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v7, v7, Lb/g/d/c$c;->e:I

    goto/16 :goto_8

    :pswitch_13
    const/16 v6, 0x4b

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget-boolean v7, v7, Lb/g/d/c$b;->n0:Z

    :goto_4
    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v2, v6, v5}, Lb/g/d/c$a$a;->d(IZ)V

    goto/16 :goto_11

    :pswitch_14
    const/16 v6, 0x4a

    goto/16 :goto_d

    :pswitch_15
    const/16 v6, 0x49

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->g0:I

    goto/16 :goto_e

    :pswitch_16
    const/16 v6, 0x48

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->f0:I

    goto/16 :goto_8

    :pswitch_17
    const-string v5, "CURRENTLY UNSUPPORTED"

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :pswitch_18
    const/16 v6, 0x46

    goto/16 :goto_a

    :pswitch_19
    const/16 v6, 0x45

    goto/16 :goto_a

    :pswitch_1a
    const/16 v6, 0x44

    iget-object v7, p0, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iget v7, v7, Lb/g/d/c$d;->e:F

    goto/16 :goto_a

    :pswitch_1b
    const/16 v6, 0x43

    iget-object v7, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v7, v7, Lb/g/d/c$c;->i:F

    goto/16 :goto_a

    :pswitch_1c
    const/16 v6, 0x42

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    goto/16 :goto_f

    :pswitch_1d
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    iget v6, v6, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x41

    if-ne v6, v9, :cond_5

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_5
    sget-object v6, Lb/g/a/h/a/c;->c:[Ljava/lang/String;

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    aget-object v5, v6, v5

    :goto_5
    invoke-virtual {v2, v7, v5}, Lb/g/d/c$a$a;->c(ILjava/lang/String;)V

    goto/16 :goto_11

    :pswitch_1e
    const/16 v6, 0x40

    iget-object v7, p0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v7, v7, Lb/g/d/c$c;->b:I

    .line 3
    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-ne v7, v13, :cond_6

    :goto_6
    invoke-virtual {p1, v5, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 4
    :cond_6
    invoke-virtual {v2, v6, v7}, Lb/g/d/c$a$a;->b(II)V

    goto/16 :goto_11

    :pswitch_1f
    const/16 v6, 0x3f

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->B:F

    goto/16 :goto_a

    :pswitch_20
    const/16 v6, 0x3e

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->A:I

    goto/16 :goto_e

    :pswitch_21
    const/16 v6, 0x3c

    iget-object v7, p0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v7, v7, Lb/g/d/c$e;->b:F

    goto/16 :goto_a

    :pswitch_22
    const/16 v6, 0x3b

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->c0:I

    goto/16 :goto_e

    :pswitch_23
    const/16 v6, 0x3a

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->b0:I

    goto/16 :goto_e

    :pswitch_24
    const/16 v6, 0x39

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->a0:I

    goto/16 :goto_e

    :pswitch_25
    const/16 v6, 0x38

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->Z:I

    goto/16 :goto_e

    :pswitch_26
    const/16 v6, 0x37

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->Y:I

    goto/16 :goto_8

    :pswitch_27
    const/16 v6, 0x36

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->X:I

    goto/16 :goto_8

    :pswitch_28
    if-lt v0, v10, :cond_7

    const/16 v6, 0x35

    iget-object v7, p0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v7, v7, Lb/g/d/c$e;->l:F

    goto :goto_7

    :pswitch_29
    const/16 v6, 0x34

    iget-object v7, p0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v7, v7, Lb/g/d/c$e;->k:F

    goto :goto_7

    :pswitch_2a
    const/16 v6, 0x33

    iget-object v7, p0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v7, v7, Lb/g/d/c$e;->j:F

    goto :goto_7

    :pswitch_2b
    const/16 v6, 0x32

    iget-object v7, p0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v7, v7, Lb/g/d/c$e;->h:F

    goto :goto_7

    :pswitch_2c
    const/16 v6, 0x31

    iget-object v7, p0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v7, v7, Lb/g/d/c$e;->g:F

    goto :goto_7

    :pswitch_2d
    const/16 v6, 0x30

    iget-object v7, p0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v7, v7, Lb/g/d/c$e;->f:F

    goto/16 :goto_a

    :pswitch_2e
    const/16 v6, 0x2f

    iget-object v7, p0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v7, v7, Lb/g/d/c$e;->e:F

    goto/16 :goto_a

    :pswitch_2f
    const/16 v6, 0x2e

    iget-object v7, p0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v7, v7, Lb/g/d/c$e;->d:F

    goto/16 :goto_a

    :pswitch_30
    const/16 v6, 0x2d

    iget-object v7, p0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v7, v7, Lb/g/d/c$e;->c:F

    goto/16 :goto_a

    :pswitch_31
    if-lt v0, v10, :cond_7

    const/16 v6, 0x2c

    invoke-virtual {v2, v6, v12}, Lb/g/d/c$a$a;->d(IZ)V

    iget-object v7, p0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v7, v7, Lb/g/d/c$e;->n:F

    :goto_7
    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    goto/16 :goto_b

    :pswitch_32
    const/16 v6, 0x2b

    iget-object v7, p0, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iget v7, v7, Lb/g/d/c$d;->d:F

    goto/16 :goto_a

    :pswitch_33
    const/16 v6, 0x2a

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->W:I

    goto :goto_8

    :pswitch_34
    const/16 v6, 0x29

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->V:I

    goto :goto_8

    :pswitch_35
    const/16 v6, 0x28

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->T:F

    goto/16 :goto_a

    :pswitch_36
    const/16 v6, 0x27

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->U:F

    goto/16 :goto_a

    :pswitch_37
    iget v6, p0, Lb/g/d/c$a;->a:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lb/g/d/c$a;->a:I

    const/16 v6, 0x26

    goto/16 :goto_f

    :pswitch_38
    const/16 v6, 0x25

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->x:F

    goto :goto_a

    :pswitch_39
    const/16 v6, 0x22

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->H:I

    goto/16 :goto_e

    :pswitch_3a
    const/16 v6, 0x1f

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->K:I

    goto/16 :goto_e

    :pswitch_3b
    const/16 v6, 0x1c

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->G:I

    goto/16 :goto_e

    :pswitch_3c
    const/16 v6, 0x1b

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->E:I

    :goto_8
    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    goto/16 :goto_f

    :pswitch_3d
    const/16 v6, 0x18

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->F:I

    goto/16 :goto_e

    :pswitch_3e
    const/16 v6, 0x17

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->c:I

    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    goto/16 :goto_f

    :pswitch_3f
    const/16 v6, 0x16

    sget-object v7, Lb/g/d/c;->g:[I

    iget-object v8, p0, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iget v8, v8, Lb/g/d/c$d;->b:I

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget v5, v7, v5

    goto/16 :goto_f

    :pswitch_40
    iget-object v6, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v6, v6, Lb/g/d/c$b;->d:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    :goto_9
    invoke-virtual {v2, v10, v5}, Lb/g/d/c$a$a;->b(II)V

    goto/16 :goto_11

    :pswitch_41
    const/16 v6, 0x14

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->w:F

    goto :goto_a

    :pswitch_42
    const/16 v6, 0x13

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->g:F

    :goto_a
    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    :goto_b
    invoke-virtual {v2, v6, v5}, Lb/g/d/c$a$a;->a(IF)V

    goto/16 :goto_11

    :pswitch_43
    const/16 v6, 0x12

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->f:I

    goto :goto_c

    :pswitch_44
    const/16 v6, 0x11

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->e:I

    goto :goto_c

    :pswitch_45
    const/16 v6, 0x10

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->N:I

    goto :goto_e

    :pswitch_46
    const/16 v6, 0xf

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->R:I

    goto :goto_e

    :pswitch_47
    const/16 v6, 0xe

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->O:I

    goto :goto_e

    :pswitch_48
    const/16 v6, 0xd

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->M:I

    goto :goto_e

    :pswitch_49
    const/16 v6, 0xc

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->Q:I

    goto :goto_e

    :pswitch_4a
    const/16 v6, 0xb

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->P:I

    goto :goto_e

    :pswitch_4b
    const/16 v6, 0x8

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->J:I

    goto :goto_e

    :pswitch_4c
    const/4 v6, 0x7

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->D:I

    goto :goto_c

    :pswitch_4d
    const/4 v6, 0x6

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->C:I

    :goto_c
    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    goto :goto_f

    :pswitch_4e
    const/4 v6, 0x5

    :goto_d
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lb/g/d/c$a$a;->c(ILjava/lang/String;)V

    goto :goto_11

    :pswitch_4f
    const/4 v6, 0x2

    iget-object v7, p0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v7, v7, Lb/g/d/c$b;->I:I

    :goto_e
    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    :goto_f
    invoke-virtual {v2, v6, v5}, Lb/g/d/c$a$a;->b(II)V

    goto :goto_11

    .line 5
    :goto_10
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4f
        :pswitch_0
        :pswitch_0
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_0
        :pswitch_0
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_0
        :pswitch_0
        :pswitch_3c
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_0
        :pswitch_0
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_0
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v4, p0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v3, "id unknown "

    invoke-static {v3}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, La/a/a/a/a;->I(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConstraintSet"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    iget-boolean v4, p0, Lb/g/d/c;->e:Z

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget-object v4, p0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/d/c$a;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, v3, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    invoke-static {v2, v3}, Lb/g/d/a;->g(Landroid/view/View;Ljava/util/HashMap;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lb/g/d/c;->c(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Lb/g/d/c;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public c(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_e

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    iget-object v7, p0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "ConstraintSet"

    if-nez v7, :cond_0

    const-string v4, "id unknown "

    invoke-static {v4}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5}, La/a/a/a/a;->I(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_0
    iget-boolean v7, p0, Lb/g/d/c;->e:Z

    const/4 v9, -0x1

    if-eqz v7, :cond_2

    if-eq v6, v9, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-ne v6, v9, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v7, p0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/g/d/c$a;

    if-nez v7, :cond_4

    goto/16 :goto_4

    :cond_4
    instance-of v8, v5, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v8, :cond_6

    iget-object v8, v7, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iput v4, v8, Lb/g/d/c$b;->h0:I

    move-object v4, v5

    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    iget-object v6, v7, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v6, v6, Lb/g/d/c$b;->f0:I

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    iget-object v6, v7, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v6, v6, Lb/g/d/c$b;->g0:I

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    iget-object v6, v7, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget-boolean v6, v6, Lb/g/d/c$b;->n0:Z

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/Barrier;->setAllowsGoneWidget(Z)V

    iget-object v6, v7, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget-object v8, v6, Lb/g/d/c$b;->i0:[I

    if-eqz v8, :cond_5

    invoke-virtual {v4, v8}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    goto :goto_2

    :cond_5
    iget-object v8, v6, Lb/g/d/c$b;->j0:Ljava/lang/String;

    if-eqz v8, :cond_6

    invoke-virtual {p0, v4, v8}, Lb/g/d/c;->f(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v8

    iput-object v8, v6, Lb/g/d/c$b;->i0:[I

    iget-object v6, v7, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget-object v6, v6, Lb/g/d/c$b;->i0:[I

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    :cond_6
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a()V

    invoke-virtual {v7, v4}, Lb/g/d/c$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    if-eqz p2, :cond_7

    iget-object v6, v7, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    invoke-static {v5, v6}, Lb/g/d/a;->g(Landroid/view/View;Ljava/util/HashMap;)V

    :cond_7
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v7, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iget v6, v4, Lb/g/d/c$d;->c:I

    if-nez v6, :cond_8

    iget v4, v4, Lb/g/d/c$d;->b:I

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v6, v7, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iget v6, v6, Lb/g/d/c$d;->d:F

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, v7, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v6, v6, Lb/g/d/c$e;->b:F

    invoke-virtual {v5, v6}, Landroid/view/View;->setRotation(F)V

    iget-object v6, v7, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v6, v6, Lb/g/d/c$e;->c:F

    invoke-virtual {v5, v6}, Landroid/view/View;->setRotationX(F)V

    iget-object v6, v7, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v6, v6, Lb/g/d/c$e;->d:F

    invoke-virtual {v5, v6}, Landroid/view/View;->setRotationY(F)V

    iget-object v6, v7, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v6, v6, Lb/g/d/c$e;->e:F

    invoke-virtual {v5, v6}, Landroid/view/View;->setScaleX(F)V

    iget-object v6, v7, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v6, v6, Lb/g/d/c$e;->f:F

    invoke-virtual {v5, v6}, Landroid/view/View;->setScaleY(F)V

    iget-object v6, v7, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v8, v6, Lb/g/d/c$e;->i:I

    if-eq v8, v9, :cond_9

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iget-object v8, v7, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v8, v8, Lb/g/d/c$e;->i:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, v8

    int-to-float v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    add-int/2addr v6, v10

    int-to-float v6, v6

    div-float/2addr v6, v9

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    if-lez v9, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    if-lez v9, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v6, v9

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setPivotY(F)V

    goto :goto_3

    :cond_9
    iget v6, v6, Lb/g/d/c$e;->g:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v7, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v6, v6, Lb/g/d/c$e;->g:F

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotX(F)V

    :cond_a
    iget-object v6, v7, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v6, v6, Lb/g/d/c$e;->h:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v7, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v6, v6, Lb/g/d/c$e;->h:F

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotY(F)V

    :cond_b
    :goto_3
    iget-object v6, v7, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v6, v6, Lb/g/d/c$e;->j:F

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    iget-object v6, v7, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v6, v6, Lb/g/d/c$e;->k:F

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    const/16 v6, 0x15

    if-lt v4, v6, :cond_d

    iget-object v4, v7, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v4, v4, Lb/g/d/c$e;->l:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationZ(F)V

    iget-object v4, v7, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget-boolean v6, v4, Lb/g/d/c$e;->m:Z

    if-eqz v6, :cond_d

    iget v4, v4, Lb/g/d/c$e;->n:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setElevation(F)V

    goto :goto_4

    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING NO CONSTRAINTS for view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/d/c$a;

    if-nez v3, :cond_10

    goto :goto_5

    :cond_10
    iget-object v5, v3, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v5, Lb/g/d/c$b;->h0:I

    if-ne v5, v4, :cond_13

    new-instance v5, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    iget-object v6, v3, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget-object v7, v6, Lb/g/d/c$b;->i0:[I

    if-eqz v7, :cond_11

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    goto :goto_6

    :cond_11
    iget-object v7, v6, Lb/g/d/c$b;->j0:Ljava/lang/String;

    if-eqz v7, :cond_12

    invoke-virtual {p0, v5, v7}, Lb/g/d/c;->f(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v7

    iput-object v7, v6, Lb/g/d/c$b;->i0:[I

    iget-object v6, v3, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget-object v6, v6, Lb/g/d/c$b;->i0:[I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    :cond_12
    :goto_6
    iget-object v6, v3, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v6, v6, Lb/g/d/c$b;->f0:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    iget-object v6, v3, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v6, v6, Lb/g/d/c$b;->g0:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->c()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintHelper;->u()V

    invoke-virtual {v3, v6}, Lb/g/d/c$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    iget-object v5, v3, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget-boolean v5, v5, Lb/g/d/c$b;->a:Z

    if-eqz v5, :cond_f

    new-instance v5, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->c()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v1}, Lb/g/d/c$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    invoke-virtual {p1, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :cond_14
    :goto_7
    if-ge v2, v0, :cond_16

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of v1, p2, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v1, :cond_15

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->j(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    return-void
.end method

.method public e(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 16

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v0, v1, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_a

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    iget-boolean v0, v1, Lb/g/d/c;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    iget-object v0, v1, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lb/g/d/c$a;

    invoke-direct {v10}, Lb/g/d/c$a;-><init>()V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, v1, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lb/g/d/c$a;

    if-nez v9, :cond_3

    const/4 v15, 0x0

    goto/16 :goto_8

    :cond_3
    iget-object v10, v1, Lb/g/d/c;->d:Ljava/util/HashMap;

    .line 1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lb/g/d/a;

    :try_start_0
    const-string v15, "BackgroundColor"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v3, Lb/g/d/a;

    invoke-direct {v3, v14, v15}, Lb/g/d/a;-><init>(Lb/g/d/a;Ljava/lang/Object;)V

    const/4 v15, 0x0

    goto :goto_3

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getMap"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v15, 0x0

    :try_start_1
    new-array v1, v15, [Ljava/lang/Class;

    invoke-virtual {v12, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v15, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Lb/g/d/a;

    invoke-direct {v3, v14, v1}, Lb/g/d/a;-><init>(Lb/g/d/a;Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {v11, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    const/4 v15, 0x0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_7

    :catch_4
    move-exception v0

    const/4 v15, 0x0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_7

    :catch_5
    move-exception v0

    const/4 v15, 0x0

    :goto_6
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_7
    move-object/from16 v1, p0

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    .line 2
    iput-object v11, v9, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v9, v8, v7}, Lb/g/d/c$a;->c(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 4
    iget-object v0, v9, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v1

    iput v1, v0, Lb/g/d/c$d;->b:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, v9, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v3

    iput v3, v1, Lb/g/d/c$d;->d:F

    iget-object v1, v9, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    invoke-virtual {v6}, Landroid/view/View;->getRotation()F

    move-result v3

    iput v3, v1, Lb/g/d/c$e;->b:F

    iget-object v1, v9, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    invoke-virtual {v6}, Landroid/view/View;->getRotationX()F

    move-result v3

    iput v3, v1, Lb/g/d/c$e;->c:F

    iget-object v1, v9, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    invoke-virtual {v6}, Landroid/view/View;->getRotationY()F

    move-result v3

    iput v3, v1, Lb/g/d/c$e;->d:F

    iget-object v1, v9, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v3

    iput v3, v1, Lb/g/d/c$e;->e:F

    iget-object v1, v9, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v3

    iput v3, v1, Lb/g/d/c$e;->f:F

    invoke-virtual {v6}, Landroid/view/View;->getPivotX()F

    move-result v1

    invoke-virtual {v6}, Landroid/view/View;->getPivotY()F

    move-result v3

    float-to-double v7, v1

    const-wide/16 v10, 0x0

    cmpl-double v12, v7, v10

    if-nez v12, :cond_6

    float-to-double v7, v3

    cmpl-double v12, v7, v10

    if-eqz v12, :cond_7

    :cond_6
    iget-object v7, v9, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iput v1, v7, Lb/g/d/c$e;->g:F

    iput v3, v7, Lb/g/d/c$e;->h:F

    :cond_7
    iget-object v1, v9, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iput v3, v1, Lb/g/d/c$e;->j:F

    iget-object v1, v9, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iput v3, v1, Lb/g/d/c$e;->k:F

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    iget-object v0, v9, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    iput v1, v0, Lb/g/d/c$e;->l:F

    iget-object v0, v9, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget-boolean v1, v0, Lb/g/d/c$e;->m:Z

    if-eqz v1, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getElevation()F

    move-result v1

    iput v1, v0, Lb/g/d/c$e;->n:F

    :cond_8
    instance-of v0, v6, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v0, :cond_9

    check-cast v6, Landroidx/constraintlayout/widget/Barrier;

    iget-object v0, v9, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->getAllowsGoneWidget()Z

    move-result v1

    iput-boolean v1, v0, Lb/g/d/c$b;->n0:Z

    iget-object v0, v9, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    move-result-object v1

    iput-object v1, v0, Lb/g/d/c$b;->i0:[I

    iget-object v0, v9, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result v1

    iput v1, v0, Lb/g/d/c$b;->f0:I

    iget-object v0, v9, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    move-result v1

    iput v1, v0, Lb/g/d/c$b;->g0:I

    :cond_9
    :goto_8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final f(Landroid/view/View;Ljava/lang/String;)[I
    .locals 9

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    array-length v1, p2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p2

    if-ge v3, v5, :cond_2

    aget-object v5, p2, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-class v6, Lb/g/d/e;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v6, v5, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v7, v2, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_1
    add-int/lit8 v5, v4, 0x1

    aput v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_2
    array-length p1, p2

    if-eq v4, p1, :cond_3

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public final g(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lb/g/d/c$a;
    .locals 11

    new-instance v0, Lb/g/d/c$a;

    invoke-direct {v0}, Lb/g/d/c$a;-><init>()V

    if-eqz p3, :cond_0

    sget-object v1, Lb/g/d/f;->ConstraintOverride:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lb/g/d/f;->Constraint:[I

    :goto_0
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz p3, :cond_1

    invoke-static {v0, p1}, Lb/g/d/c;->n(Lb/g/d/c$a;Landroid/content/res/TypedArray;)V

    goto/16 :goto_6

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p3, :cond_1a

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Lb/g/d/f;->Constraint_android_id:I

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    sget v4, Lb/g/d/f;->Constraint_android_layout_marginStart:I

    if-eq v4, v3, :cond_2

    sget v4, Lb/g/d/f;->Constraint_android_layout_marginEnd:I

    if-eq v4, v3, :cond_2

    iget-object v4, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iput-boolean v5, v4, Lb/g/d/c$c;->a:Z

    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iput-boolean v5, v4, Lb/g/d/c$b;->b:Z

    iget-object v4, v0, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iput-boolean v5, v4, Lb/g/d/c$d;->a:Z

    iget-object v4, v0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iput-boolean v5, v4, Lb/g/d/c$e;->a:Z

    :cond_2
    sget-object v4, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x3

    const/16 v8, 0x15

    const-string v9, "ConstraintSet"

    const/4 v10, -0x1

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown attribute 0x"

    goto/16 :goto_4

    :pswitch_1
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->o0:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->o0:I

    goto/16 :goto_5

    :pswitch_2
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    invoke-static {v4, p1, v3, v5}, Lb/g/d/c;->l(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    invoke-static {v4, p1, v3, v1}, Lb/g/d/c;->l(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_5

    :pswitch_4
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->S:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->S:I

    goto/16 :goto_5

    :pswitch_5
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->L:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->L:I

    goto/16 :goto_5

    :pswitch_6
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->r:I

    .line 2
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v10, :cond_3

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 3
    :cond_3
    iput v5, v4, Lb/g/d/c$b;->r:I

    goto/16 :goto_5

    :pswitch_7
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->q:I

    .line 4
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v10, :cond_4

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 5
    :cond_4
    iput v5, v4, Lb/g/d/c$b;->q:I

    goto/16 :goto_5

    :pswitch_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unused attribute 0x"

    goto/16 :goto_4

    :pswitch_9
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    iget v4, v4, Landroid/util/TypedValue;->type:I

    const/4 v6, -0x2

    if-ne v4, v5, :cond_5

    iget-object v4, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$c;->n:I

    iget-object v3, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v4, v3, Lb/g/d/c$c;->n:I

    if-eq v4, v10, :cond_19

    goto :goto_2

    :cond_5
    if-ne v4, v7, :cond_7

    iget-object v4, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lb/g/d/c$c;->l:Ljava/lang/String;

    iget-object v4, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget-object v4, v4, Lb/g/d/c$c;->l:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$c;->n:I

    iget-object v3, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    :goto_2
    iput v6, v3, Lb/g/d/c$c;->m:I

    goto/16 :goto_5

    :cond_6
    iget-object v3, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iput v10, v3, Lb/g/d/c$c;->m:I

    goto/16 :goto_5

    :cond_7
    iget-object v4, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v5, v4, Lb/g/d/c$c;->n:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$c;->m:I

    goto/16 :goto_5

    :pswitch_a
    iget-object v4, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v5, v4, Lb/g/d/c$c;->j:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$c;->j:F

    goto/16 :goto_5

    :pswitch_b
    iget-object v4, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v5, v4, Lb/g/d/c$c;->k:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$c;->k:I

    goto/16 :goto_5

    :pswitch_c
    iget-object v4, v0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v5, v4, Lb/g/d/c$e;->i:I

    .line 6
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v10, :cond_8

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 7
    :cond_8
    iput v5, v4, Lb/g/d/c$e;->i:I

    goto/16 :goto_5

    :pswitch_d
    iget-object v4, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v5, v4, Lb/g/d/c$c;->c:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$c;->c:I

    goto/16 :goto_5

    :pswitch_e
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget-boolean v5, v4, Lb/g/d/c$b;->m0:Z

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v4, Lb/g/d/c$b;->m0:Z

    goto/16 :goto_5

    :pswitch_f
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget-boolean v5, v4, Lb/g/d/c$b;->l0:Z

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v4, Lb/g/d/c$b;->l0:Z

    goto/16 :goto_5

    :pswitch_10
    iget-object v4, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v5, v4, Lb/g/d/c$c;->g:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$c;->g:F

    goto/16 :goto_5

    :pswitch_11
    iget-object v4, v0, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iget v5, v4, Lb/g/d/c$d;->c:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$d;->c:I

    goto/16 :goto_5

    :pswitch_12
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lb/g/d/c$b;->k0:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_13
    iget-object v4, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v5, v4, Lb/g/d/c$c;->e:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$c;->e:I

    goto/16 :goto_5

    :pswitch_14
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget-boolean v5, v4, Lb/g/d/c$b;->n0:Z

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v4, Lb/g/d/c$b;->n0:Z

    goto/16 :goto_5

    :pswitch_15
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lb/g/d/c$b;->j0:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_16
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->g0:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->g0:I

    goto/16 :goto_5

    :pswitch_17
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->f0:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->f0:I

    goto/16 :goto_5

    :pswitch_18
    const-string v3, "CURRENTLY UNSUPPORTED"

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_19
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->e0:F

    goto/16 :goto_5

    :pswitch_1a
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->d0:F

    goto/16 :goto_5

    :pswitch_1b
    iget-object v4, v0, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iget v5, v4, Lb/g/d/c$d;->e:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$d;->e:F

    goto/16 :goto_5

    :pswitch_1c
    iget-object v4, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v5, v4, Lb/g/d/c$c;->i:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$c;->i:F

    goto/16 :goto_5

    :pswitch_1d
    iget-object v4, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$c;->f:I

    goto/16 :goto_5

    :pswitch_1e
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    iget v4, v4, Landroid/util/TypedValue;->type:I

    if-ne v4, v7, :cond_9

    iget-object v4, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_9
    iget-object v4, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    sget-object v5, Lb/g/a/h/a/c;->c:[Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    aget-object v3, v5, v3

    :goto_3
    iput-object v3, v4, Lb/g/d/c$c;->d:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_1f
    iget-object v4, v0, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v5, v4, Lb/g/d/c$c;->b:I

    .line 8
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v10, :cond_a

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 9
    :cond_a
    iput v5, v4, Lb/g/d/c$c;->b:I

    goto/16 :goto_5

    :pswitch_20
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->B:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->B:F

    goto/16 :goto_5

    :pswitch_21
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->A:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->A:I

    goto/16 :goto_5

    :pswitch_22
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->z:I

    .line 10
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v10, :cond_b

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 11
    :cond_b
    iput v5, v4, Lb/g/d/c$b;->z:I

    goto/16 :goto_5

    :pswitch_23
    iget-object v4, v0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v5, v4, Lb/g/d/c$e;->b:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$e;->b:F

    goto/16 :goto_5

    :pswitch_24
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->c0:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->c0:I

    goto/16 :goto_5

    :pswitch_25
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->b0:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->b0:I

    goto/16 :goto_5

    :pswitch_26
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->a0:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->a0:I

    goto/16 :goto_5

    :pswitch_27
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->Z:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->Z:I

    goto/16 :goto_5

    :pswitch_28
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->Y:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->Y:I

    goto/16 :goto_5

    :pswitch_29
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->X:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->X:I

    goto/16 :goto_5

    :pswitch_2a
    if-lt p2, v8, :cond_19

    iget-object v4, v0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v5, v4, Lb/g/d/c$e;->l:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$e;->l:F

    goto/16 :goto_5

    :pswitch_2b
    iget-object v4, v0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v5, v4, Lb/g/d/c$e;->k:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$e;->k:F

    goto/16 :goto_5

    :pswitch_2c
    iget-object v4, v0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v5, v4, Lb/g/d/c$e;->j:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$e;->j:F

    goto/16 :goto_5

    :pswitch_2d
    iget-object v4, v0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v5, v4, Lb/g/d/c$e;->h:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$e;->h:F

    goto/16 :goto_5

    :pswitch_2e
    iget-object v4, v0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v5, v4, Lb/g/d/c$e;->g:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$e;->g:F

    goto/16 :goto_5

    :pswitch_2f
    iget-object v4, v0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v5, v4, Lb/g/d/c$e;->f:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$e;->f:F

    goto/16 :goto_5

    :pswitch_30
    iget-object v4, v0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v5, v4, Lb/g/d/c$e;->e:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$e;->e:F

    goto/16 :goto_5

    :pswitch_31
    iget-object v4, v0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v5, v4, Lb/g/d/c$e;->d:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$e;->d:F

    goto/16 :goto_5

    :pswitch_32
    iget-object v4, v0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v5, v4, Lb/g/d/c$e;->c:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$e;->c:F

    goto/16 :goto_5

    :pswitch_33
    if-lt p2, v8, :cond_19

    iget-object v4, v0, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iput-boolean v5, v4, Lb/g/d/c$e;->m:Z

    iget v5, v4, Lb/g/d/c$e;->n:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$e;->n:F

    goto/16 :goto_5

    :pswitch_34
    iget-object v4, v0, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iget v5, v4, Lb/g/d/c$d;->d:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$d;->d:F

    goto/16 :goto_5

    :pswitch_35
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->W:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->W:I

    goto/16 :goto_5

    :pswitch_36
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->V:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->V:I

    goto/16 :goto_5

    :pswitch_37
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->T:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->T:F

    goto/16 :goto_5

    :pswitch_38
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->U:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->U:F

    goto/16 :goto_5

    :pswitch_39
    iget v4, v0, Lb/g/d/c$a;->a:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v0, Lb/g/d/c$a;->a:I

    goto/16 :goto_5

    :pswitch_3a
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->x:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->x:F

    goto/16 :goto_5

    :pswitch_3b
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->l:I

    .line 12
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v10, :cond_c

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 13
    :cond_c
    iput v5, v4, Lb/g/d/c$b;->l:I

    goto/16 :goto_5

    :pswitch_3c
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->m:I

    .line 14
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v10, :cond_d

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 15
    :cond_d
    iput v5, v4, Lb/g/d/c$b;->m:I

    goto/16 :goto_5

    :pswitch_3d
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->H:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->H:I

    goto/16 :goto_5

    :pswitch_3e
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->t:I

    .line 16
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v10, :cond_e

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 17
    :cond_e
    iput v5, v4, Lb/g/d/c$b;->t:I

    goto/16 :goto_5

    :pswitch_3f
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->s:I

    .line 18
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v10, :cond_f

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 19
    :cond_f
    iput v5, v4, Lb/g/d/c$b;->s:I

    goto/16 :goto_5

    :pswitch_40
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->K:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->K:I

    goto/16 :goto_5

    :pswitch_41
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->k:I

    .line 20
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v10, :cond_10

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 21
    :cond_10
    iput v5, v4, Lb/g/d/c$b;->k:I

    goto/16 :goto_5

    :pswitch_42
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->j:I

    .line 22
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v10, :cond_11

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 23
    :cond_11
    iput v5, v4, Lb/g/d/c$b;->j:I

    goto/16 :goto_5

    :pswitch_43
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->G:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->G:I

    goto/16 :goto_5

    :pswitch_44
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->E:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->E:I

    goto/16 :goto_5

    :pswitch_45
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->i:I

    .line 24
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v10, :cond_12

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 25
    :cond_12
    iput v5, v4, Lb/g/d/c$b;->i:I

    goto/16 :goto_5

    :pswitch_46
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->h:I

    .line 26
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v10, :cond_13

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 27
    :cond_13
    iput v5, v4, Lb/g/d/c$b;->h:I

    goto/16 :goto_5

    :pswitch_47
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->F:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->F:I

    goto/16 :goto_5

    :pswitch_48
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->c:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->c:I

    goto/16 :goto_5

    :pswitch_49
    iget-object v4, v0, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iget v5, v4, Lb/g/d/c$d;->b:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$d;->b:I

    iget-object v3, v0, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    sget-object v4, Lb/g/d/c;->g:[I

    iget v5, v3, Lb/g/d/c$d;->b:I

    aget v4, v4, v5

    iput v4, v3, Lb/g/d/c$d;->b:I

    goto/16 :goto_5

    :pswitch_4a
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->d:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->d:I

    goto/16 :goto_5

    :pswitch_4b
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->w:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->w:F

    goto/16 :goto_5

    :pswitch_4c
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->g:F

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->g:F

    goto/16 :goto_5

    :pswitch_4d
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->f:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->f:I

    goto/16 :goto_5

    :pswitch_4e
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->e:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->e:I

    goto/16 :goto_5

    :pswitch_4f
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->N:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->N:I

    goto/16 :goto_5

    :pswitch_50
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->R:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->R:I

    goto/16 :goto_5

    :pswitch_51
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->O:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->O:I

    goto/16 :goto_5

    :pswitch_52
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->M:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->M:I

    goto/16 :goto_5

    :pswitch_53
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->Q:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->Q:I

    goto/16 :goto_5

    :pswitch_54
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->P:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->P:I

    goto/16 :goto_5

    :pswitch_55
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->u:I

    .line 28
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v10, :cond_14

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 29
    :cond_14
    iput v5, v4, Lb/g/d/c$b;->u:I

    goto/16 :goto_5

    :pswitch_56
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->v:I

    .line 30
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v10, :cond_15

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 31
    :cond_15
    iput v5, v4, Lb/g/d/c$b;->v:I

    goto/16 :goto_5

    :pswitch_57
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->J:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->J:I

    goto/16 :goto_5

    :pswitch_58
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->D:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->D:I

    goto/16 :goto_5

    :pswitch_59
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->C:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->C:I

    goto :goto_5

    :pswitch_5a
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lb/g/d/c$b;->y:Ljava/lang/String;

    goto :goto_5

    :pswitch_5b
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->n:I

    .line 32
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v10, :cond_16

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 33
    :cond_16
    iput v5, v4, Lb/g/d/c$b;->n:I

    goto :goto_5

    :pswitch_5c
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->o:I

    .line 34
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v10, :cond_17

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 35
    :cond_17
    iput v5, v4, Lb/g/d/c$b;->o:I

    goto :goto_5

    :pswitch_5d
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->I:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lb/g/d/c$b;->I:I

    goto :goto_5

    :pswitch_5e
    iget-object v4, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v5, v4, Lb/g/d/c$b;->p:I

    .line 36
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-ne v5, v10, :cond_18

    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 37
    :cond_18
    iput v5, v4, Lb/g/d/c$b;->p:I

    goto :goto_5

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lb/g/d/c;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 38
    :cond_1a
    :goto_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final h(I)Lb/g/d/c$a;
    .locals 3

    iget-object v0, p0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lb/g/d/c$a;

    invoke-direct {v2}, Lb/g/d/c$a;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/g/d/c$a;

    return-object p1
.end method

.method public i(I)Lb/g/d/c$a;
    .locals 2

    iget-object v0, p0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/g/d/c$a;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public j(Landroid/content/Context;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lb/g/d/c;->g(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lb/g/d/c$a;

    move-result-object v2

    const-string v3, "Guideline"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iput-boolean v1, v0, Lb/g/d/c$b;->a:Z

    :cond_1
    iget-object v0, p0, Lb/g/d/c;->f:Ljava/util/HashMap;

    iget v1, v2, Lb/g/d/c$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public k(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_c

    if-eqz v0, :cond_b

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eq v0, v6, :cond_4

    if-eq v0, v7, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "constraintset"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "constraintoverride"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "constraint"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, "guideline"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x3

    :cond_1
    :goto_1
    if-eqz v4, :cond_3

    if-eq v4, v3, :cond_2

    if-eq v4, v6, :cond_2

    if-eq v4, v7, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lb/g/d/c;->f:Ljava/util/HashMap;

    iget v3, v2, Lb/g/d/c$a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    goto/16 :goto_4

    :cond_3
    return-void

    :cond_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    goto/16 :goto_2

    :sswitch_4
    const-string v6, "Constraint"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_5
    const-string v6, "CustomAttribute"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v4, 0x8

    goto :goto_2

    :sswitch_6
    const-string v6, "Barrier"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x3

    goto :goto_2

    :sswitch_7
    const-string v6, "CustomMethod"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v4, 0x9

    goto :goto_2

    :sswitch_8
    const-string v7, "Guideline"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x2

    goto :goto_2

    :sswitch_9
    const-string v6, "Transform"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x5

    goto :goto_2

    :sswitch_a
    const-string v6, "PropertySet"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_b
    const-string v6, "ConstraintOverride"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_c
    const-string v6, "Motion"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x7

    goto :goto_2

    :sswitch_d
    const-string v6, "Layout"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    const/4 v4, 0x6

    :cond_5
    :goto_2
    const-string v0, "XML parser error must be within a Constraint "

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-eqz v2, :cond_6

    :try_start_1
    iget-object v0, v2, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    invoke-static {p1, p2, v0}, Lb/g/d/a;->f(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto/16 :goto_4

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    if-eqz v2, :cond_7

    iget-object v0, v2, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lb/g/d/c$c;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_4

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    if-eqz v2, :cond_8

    iget-object v0, v2, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lb/g/d/c$b;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_4

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    if-eqz v2, :cond_9

    iget-object v0, v2, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lb/g/d/c$e;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_4

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    if-eqz v2, :cond_a

    iget-object v0, v2, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lb/g/d/c$d;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v5}, Lb/g/d/c;->g(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lb/g/d/c$a;

    move-result-object v0

    iget-object v2, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iput v3, v2, Lb/g/d/c$b;->h0:I

    goto :goto_3

    :pswitch_6
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v5}, Lb/g/d/c;->g(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lb/g/d/c$a;

    move-result-object v0

    iget-object v2, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iput-boolean v3, v2, Lb/g/d/c$b;->a:Z

    iput-boolean v3, v2, Lb/g/d/c$b;->b:Z

    goto :goto_3

    :pswitch_7
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3}, Lb/g/d/c;->g(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lb/g/d/c$a;

    move-result-object v0

    goto :goto_3

    :pswitch_8
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v5}, Lb/g/d/c;->g(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lb/g/d/c$a;

    move-result-object v0

    :goto_3
    move-object v2, v0

    goto :goto_4

    :cond_b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_c
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bb8f310 -> :sswitch_3
        -0xb58ea23 -> :sswitch_2
        0x196d04a9 -> :sswitch_1
        0x7feafd65 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x78c018b6 -> :sswitch_d
        -0x7648542a -> :sswitch_c
        -0x74f4db17 -> :sswitch_b
        -0x4bab3dd3 -> :sswitch_a
        -0x49cf74b4 -> :sswitch_9
        -0x446d330 -> :sswitch_8
        0x15d883d2 -> :sswitch_7
        0x4f5d3b97 -> :sswitch_6
        0x6acd460b -> :sswitch_5
        0x6b78f1fd -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
