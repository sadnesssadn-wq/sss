.class public Lc/b/q/b/f$b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lc/b/q/b/f$b$b;->c:Lc/b/q/b/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lc/b/q/b/f$b$b;->c:Lc/b/q/b/f$b;

    iget-object v0, p1, Lc/b/q/b/f$b;->k:Lc/b/q/b/f;

    .line 1
    iget-object v0, v0, Lc/b/q/b/f;->b:Lc/b/q/b/f$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p1

    check-cast v0, Lc/b/q/a/e;

    .line 3
    iget-object v0, v0, Lc/b/q/a/e;->a:Lcom/emsportal/instant/activity/CreateSuperParcelActivity;

    .line 4
    iput p1, v0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->t:I

    .line 5
    iget-object p1, v0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->s:Lb/a/e/c;

    .line 6
    invoke-virtual {v0, p1}, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->w(Lb/a/e/c;)V

    :cond_0
    return-void
.end method
