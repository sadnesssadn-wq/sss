.class public Lc/b/i/c$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/i/c$a;-><init>(Lc/b/i/c;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/b/i/c$a;


# direct methods
.method public constructor <init>(Lc/b/i/c$a;Lc/b/i/c;)V
    .locals 0

    iput-object p1, p0, Lc/b/i/c$a$a;->c:Lc/b/i/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lc/b/i/c$a$a;->c:Lc/b/i/c$a;

    iget-object v0, p1, Lc/b/i/c$a;->c:Lc/b/i/c;

    .line 1
    iget-object v0, v0, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;->k(I)V

    :cond_0
    return-void
.end method
