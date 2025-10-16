.class public Lc/b/v/b/a;
.super Lcom/emsportal/base/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/v/b/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lc/b/v/c/a;",
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

    const v0, 0x7f0b0073

    return v0
.end method

.method public b(Landroid/view/View;)Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
    .locals 1

    new-instance v0, Lc/b/v/b/a$a;

    invoke-direct {v0, p0, p1}, Lc/b/v/b/a$a;-><init>(Lc/b/v/b/a;Landroid/view/View;)V

    return-object v0
.end method
