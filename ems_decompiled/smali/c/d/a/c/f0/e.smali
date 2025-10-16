.class public Lc/d/a/c/f0/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lc/d/a/c/f0/g;


# direct methods
.method public constructor <init>(Lc/d/a/c/f0/g;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/f0/e;->a:Lc/d/a/c/f0/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, Lc/d/a/c/f0/e;->a:Lc/d/a/c/f0/g;

    .line 1
    iget v0, p1, Lc/d/a/c/f0/g;->h:I

    add-int/lit8 v0, v0, 0x4

    .line 2
    iget-object v1, p1, Lc/d/a/c/f0/g;->g:Lc/d/a/c/f0/c;

    .line 3
    iget-object v1, v1, Lc/d/a/c/f0/c;->c:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 4
    iput v0, p1, Lc/d/a/c/f0/g;->h:I

    return-void
.end method
