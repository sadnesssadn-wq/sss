.class public Lc/b/q/b/f$b$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/q/b/f$b$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/q/b/f$b$a;


# direct methods
.method public constructor <init>(Lc/b/q/b/f$b$a;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/b/f$b$a$a;->a:Lc/b/q/b/f$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/b/q/b/f$b$a$a;->a:Lc/b/q/b/f$b$a;

    iget-object v0, v0, Lc/b/q/b/f$b$a;->c:Lc/b/q/b/f$b;

    .line 1
    iget-object v0, v0, Lc/b/q/b/f$b;->c:Landroid/widget/EditText;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lc/b/q/b/f$b$a$a;->a:Lc/b/q/b/f$b$a;

    iget-object p1, p1, Lc/b/q/b/f$b$a;->c:Lc/b/q/b/f$b;

    iget-object v0, p1, Lc/b/q/b/f$b;->k:Lc/b/q/b/f;

    .line 3
    iget-object v0, v0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/q/d/d;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lc/b/q/d/d;->r(D)V

    invoke-virtual {p1, v0, v1}, Lc/b/q/d/d;->u(D)V

    return-void
.end method
