.class public Lc/b/q/b/f$b$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/q/b/f$b;-><init>(Lc/b/q/b/f;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/b/q/b/f$b;


# direct methods
.method public constructor <init>(Lc/b/q/b/f$b;Lc/b/q/b/f;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/b/f$b$f;->c:Lc/b/q/b/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lc/b/q/b/f$b$f;->c:Lc/b/q/b/f$b;

    iget-object p3, p2, Lc/b/q/b/f$b;->k:Lc/b/q/b/f;

    .line 1
    iget-object p3, p3, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p2

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/b/q/d/d;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lc/b/q/d/d;->n(Ljava/lang/String;)V

    return-void
.end method
