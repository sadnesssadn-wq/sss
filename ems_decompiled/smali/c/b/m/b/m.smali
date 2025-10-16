.class public Lc/b/m/b/m;
.super Lcom/emsportal/base/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/m/b/m$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/b/m/d/c0;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/emsportal/base/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    iput-object p2, p0, Lc/b/m/b/m;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0b0093

    return v0
.end method

.method public b(Landroid/view/View;)Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
    .locals 1

    new-instance v0, Lc/b/m/b/m$a;

    invoke-direct {v0, p0, p1}, Lc/b/m/b/m$a;-><init>(Lc/b/m/b/m;Landroid/view/View;)V

    return-object v0
.end method
