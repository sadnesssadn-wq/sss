.class public Lc/b/o/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lc/b/o/d;


# direct methods
.method public constructor <init>(Lc/b/o/d;)V
    .locals 0

    iput-object p1, p0, Lc/b/o/e;->c:Lc/b/o/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lc/b/o/e;->c:Lc/b/o/d;

    .line 1
    iget-object p1, p1, Lc/b/o/d;->t:Lb/b/k/g;

    .line 2
    invoke-virtual {p1}, Lb/b/k/q;->dismiss()V

    return-void
.end method
