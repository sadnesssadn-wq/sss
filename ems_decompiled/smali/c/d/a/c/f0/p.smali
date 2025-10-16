.class public Lc/d/a/c/f0/p;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lc/d/a/c/f0/q;


# direct methods
.method public constructor <init>(Lc/d/a/c/f0/q;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/f0/p;->a:Lc/d/a/c/f0/q;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, Lc/d/a/c/f0/p;->a:Lc/d/a/c/f0/q;

    .line 1
    iget v0, p1, Lc/d/a/c/f0/q;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    iget-object v2, p1, Lc/d/a/c/f0/q;->f:Lc/d/a/c/f0/c;

    .line 3
    iget-object v2, v2, Lc/d/a/c/f0/c;->c:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    .line 4
    iput v0, p1, Lc/d/a/c/f0/q;->g:I

    .line 5
    iput-boolean v1, p1, Lc/d/a/c/f0/q;->h:Z

    return-void
.end method
