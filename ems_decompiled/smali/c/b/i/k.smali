.class public Lc/b/i/k;
.super Lcom/emsportal/base/BaseSpinnerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/i/k$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lc/b/m/d/h0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/emsportal/base/BaseSpinnerAdapter;-><init>()V

    iput-object p1, p0, Lcom/emsportal/base/BaseSpinnerAdapter;->listDatas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0b0079

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0b0099

    return v0
.end method

.method public c(Landroid/view/View;)Lcom/emsportal/base/BaseSpinnerAdapter$BaseViewHolder;
    .locals 1

    new-instance v0, Lc/b/i/k$a;

    invoke-direct {v0, p0, p1}, Lc/b/i/k$a;-><init>(Lc/b/i/k;Landroid/view/View;)V

    return-object v0
.end method

.method public d(Landroid/view/View;)Lcom/emsportal/base/BaseSpinnerAdapter$BaseViewHolder;
    .locals 1

    new-instance v0, Lc/b/i/k$a;

    invoke-direct {v0, p0, p1}, Lc/b/i/k$a;-><init>(Lc/b/i/k;Landroid/view/View;)V

    return-object v0
.end method
