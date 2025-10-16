.class public Lc/b/p/b/g;
.super Lcom/emsportal/base/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/p/b/g$a;,
        Lc/b/p/b/g$b;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Landroid/content/Context;

.field public c:Lc/b/p/b/g$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lc/b/p/b/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lc/b/p/e/j;",
            ">;",
            "Lc/b/p/b/g$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/emsportal/base/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    invoke-static {}, Lb/u/a;->K()Z

    move-result p2

    iput-boolean p2, p0, Lc/b/p/b/g;->a:Z

    iput-object p1, p0, Lc/b/p/b/g;->b:Landroid/content/Context;

    iput-object p3, p0, Lc/b/p/b/g;->c:Lc/b/p/b/g$a;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0b007f

    return v0
.end method

.method public b(Landroid/view/View;)Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
    .locals 1

    new-instance v0, Lc/b/p/b/g$b;

    invoke-direct {v0, p0, p1}, Lc/b/p/b/g$b;-><init>(Lc/b/p/b/g;Landroid/view/View;)V

    return-object v0
.end method
