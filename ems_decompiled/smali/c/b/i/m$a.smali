.class public Lc/b/i/m$a;
.super Lcom/emsportal/base/BaseSpinnerAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/i/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lc/b/i/m;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseSpinnerAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseSpinnerAdapter;Landroid/view/View;)V

    const p1, 0x7f0804cd

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseSpinnerAdapter$BaseViewHolder;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/i/m$a;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/emsportal/model/ObjWard;

    iget-object v0, p0, Lc/b/i/m$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/emsportal/model/ObjWard;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
