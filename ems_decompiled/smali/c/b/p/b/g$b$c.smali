.class public Lc/b/p/b/g$b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/p/b/g$b;-><init>(Lc/b/p/b/g;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/b/p/b/g$b;


# direct methods
.method public constructor <init>(Lc/b/p/b/g$b;Lc/b/p/b/g;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/b/g$b$c;->c:Lc/b/p/b/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lc/b/p/b/g$b$c;->c:Lc/b/p/b/g$b;

    iget-object v0, p1, Lc/b/p/b/g$b;->m:Lc/b/p/b/g;

    .line 1
    iget-object v0, v0, Lc/b/p/b/g;->c:Lc/b/p/b/g$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p1

    check-cast v0, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    .line 3
    iput p1, v0, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->v:I

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/emsportal/activity/SelectPlaceManualActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v0, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->t:Lb/a/e/c;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p1, v1}, Lb/a/e/c;->a(Ljava/lang/Object;Lb/i/e/c;)V

    :cond_0
    return-void
.end method
