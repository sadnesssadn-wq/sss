.class public Lb/g/c/b/h$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g/c/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Landroid/util/SparseIntArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lb/g/c/b/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyPosition_motionTarget:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyPosition_framePosition:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyPosition_transitionEasing:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyPosition_curveFit:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyPosition_drawPath:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyPosition_percentX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyPosition_percentY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyPosition_keyPositionType:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyPosition_sizePercent:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyPosition_percentWidth:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyPosition_percentHeight:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyPosition_pathMotionArc:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method
