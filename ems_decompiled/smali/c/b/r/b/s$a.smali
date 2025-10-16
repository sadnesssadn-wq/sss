.class public Lc/b/r/b/s$a;
.super Lcom/emsportal/base/BaseSpinnerAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/r/b/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lc/b/r/b/s;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseSpinnerAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseSpinnerAdapter;Landroid/view/View;)V

    const p1, 0x7f0804cd

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseSpinnerAdapter$BaseViewHolder;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/r/b/s$a;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lc/b/r/c/p;

    iget-object v0, p0, Lc/b/r/b/s$a;->a:Landroid/widget/TextView;

    .line 1
    iget-object p1, p1, Lc/b/r/c/p;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
