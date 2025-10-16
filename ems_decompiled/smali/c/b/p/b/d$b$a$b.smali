.class public Lc/b/p/b/d$b$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/p/b/d$b$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/p/e/b;

.field public final synthetic b:Lc/b/p/b/d$b$a;


# direct methods
.method public constructor <init>(Lc/b/p/b/d$b$a;Lc/b/p/e/b;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/b/d$b$a$b;->b:Lc/b/p/b/d$b$a;

    iput-object p2, p0, Lc/b/p/b/d$b$a$b;->a:Lc/b/p/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lc/b/p/b/d$b$a$b;->b:Lc/b/p/b/d$b$a;

    iget-object v0, v0, Lc/b/p/b/d$b$a;->d:Lc/b/p/b/d$b;

    iget-object v0, v0, Lc/b/p/b/d$b;->j:Lc/b/p/b/d;

    .line 1
    iget-object v0, v0, Lc/b/p/b/d;->a:Lc/b/p/b/d$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lc/b/p/b/d$b$a$b;->a:Lc/b/p/e/b;

    check-cast v0, Lc/b/p/d/b;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "DATA_SUPER_SPEED_PARCEL"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    check-cast v0, Lb/b/k/h;

    const-class v1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    const/16 v3, 0xbc4

    invoke-static {v0, v1, v3, v2}, Lb/u/a;->s0(Lb/b/k/h;Ljava/lang/Class;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
