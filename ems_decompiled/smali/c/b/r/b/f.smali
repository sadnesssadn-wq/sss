.class public Lc/b/r/b/f;
.super Lcom/emsportal/base/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/r/b/f$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lc/b/r/c/e;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/emsportal/base/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0b0085

    return v0
.end method

.method public b(Landroid/view/View;)Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
    .locals 1

    new-instance v0, Lc/b/r/b/f$a;

    invoke-direct {v0, p0, p1}, Lc/b/r/b/f$a;-><init>(Lc/b/r/b/f;Landroid/view/View;)V

    return-object v0
.end method
