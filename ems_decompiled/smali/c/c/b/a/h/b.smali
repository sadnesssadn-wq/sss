.class public abstract Lc/c/b/a/h/b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/b/a/h/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/charts/Chart<",
        "*>;>",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# instance fields
.field public c:Lc/c/b/a/h/b$a;

.field public d:I

.field public e:Lc/c/b/a/f/d;

.field public f:Landroid/view/GestureDetector;

.field public g:Lcom/github/mikephil/charting/charts/Chart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/Chart;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    sget-object v0, Lc/c/b/a/h/b$a;->c:Lc/c/b/a/h/b$a;

    iput-object v0, p0, Lc/c/b/a/h/b;->c:Lc/c/b/a/h/b$a;

    const/4 v0, 0x0

    iput v0, p0, Lc/c/b/a/h/b;->d:I

    iput-object p1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lc/c/b/a/h/b;->f:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public a(Lc/c/b/a/f/d;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lc/c/b/a/h/b;->e:Lc/c/b/a/f/d;

    invoke-virtual {p1, v1}, Lc/c/b/a/f/d;->a(Lc/c/b/a/f/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v1, p1, v0}, Lcom/github/mikephil/charting/charts/Chart;->l(Lc/c/b/a/f/d;Z)V

    iput-object p1, p0, Lc/c/b/a/h/b;->e:Lc/c/b/a/f/d;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/github/mikephil/charting/charts/Chart;->l(Lc/c/b/a/f/d;Z)V

    iput-object v1, p0, Lc/c/b/a/h/b;->e:Lc/c/b/a/f/d;

    :goto_1
    return-void
.end method
