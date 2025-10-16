.class public Lc/b/q/b/h$b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/q/b/h$b;-><init>(Lc/b/q/b/h;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/b/q/b/h$b;


# direct methods
.method public constructor <init>(Lc/b/q/b/h$b;Lc/b/q/b/h;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/b/h$b$c;->c:Lc/b/q/b/h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lc/b/q/b/h$b$c;->c:Lc/b/q/b/h$b;

    iget-object v0, p1, Lc/b/q/b/h$b;->i:Lc/b/q/b/h;

    .line 1
    sget-object v1, Lc/b/q/b/h;->b:Ljava/util/List;

    iget-object v0, v0, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;->k(I)V

    :cond_0
    return-void
.end method
