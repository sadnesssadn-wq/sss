.class public final synthetic Lb/g/b/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroidx/constraintlayout/helper/widget/Carousel;


# direct methods
.method public synthetic constructor <init>(Landroidx/constraintlayout/helper/widget/Carousel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/g/b/a/a;->c:Landroidx/constraintlayout/helper/widget/Carousel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lb/g/b/a/a;->c:Landroidx/constraintlayout/helper/widget/Carousel;

    .line 1
    iget-object v1, v0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, v0, Landroidx/constraintlayout/helper/widget/Carousel;->F:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionDuration(I)V

    iget v1, v0, Landroidx/constraintlayout/helper/widget/Carousel;->E:I

    iget v2, v0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    if-ge v1, v2, :cond_0

    iget-object v1, v0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, v0, Landroidx/constraintlayout/helper/widget/Carousel;->x:I

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, v0, Landroidx/constraintlayout/helper/widget/Carousel;->y:I

    :goto_0
    iget v0, v0, Landroidx/constraintlayout/helper/widget/Carousel;->F:I

    invoke-virtual {v1, v2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->M(II)V

    return-void
.end method
