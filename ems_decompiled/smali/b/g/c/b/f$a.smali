.class public Lb/g/c/b/f$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g/c/b/f;
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

    sput-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_motionTarget:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_framePosition:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_transitionEasing:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_curveFit:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_waveShape:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_wavePeriod:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_waveOffset:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_waveVariesBy:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_android_alpha:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_android_elevation:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_android_rotation:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_android_rotationX:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_android_rotationY:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_transitionPathRotate:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_android_scaleX:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_android_scaleY:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_android_translationX:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_android_translationY:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_android_translationZ:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_motionProgress:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lb/g/c/b/f$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lb/g/d/f;->KeyCycle_wavePhase:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method
