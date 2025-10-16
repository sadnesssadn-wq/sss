.class public Lc/b/m/b/d$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/m/b/d$b;->a(Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/b/m/d/o;

.field public final synthetic d:Lc/b/m/b/d$b;


# direct methods
.method public constructor <init>(Lc/b/m/b/d$b;Lc/b/m/d/o;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/b/d$b$a;->d:Lc/b/m/b/d$b;

    iput-object p2, p0, Lc/b/m/b/d$b$a;->c:Lc/b/m/d/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lc/b/m/b/d$b$a;->d:Lc/b/m/b/d$b;

    iget-object p1, p1, Lc/b/m/b/d$b;->e:Lc/b/m/b/d;

    .line 1
    iget-object p1, p1, Lc/b/m/b/d;->a:Lc/b/m/b/d$a;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/m/b/d$b$a;->c:Lc/b/m/d/o;

    check-cast p1, Lcom/emsportal/express/activity/FreightActivity;

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p1, Lcom/emsportal/express/activity/FreightActivity;->d:Lc/b/m/d/j;

    invoke-virtual {v0}, Lc/b/m/d/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lc/b/m/d/j;->R(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/emsportal/express/activity/FreightActivity;->d:Lc/b/m/d/j;

    const-string v2, "DATA_INVENTORY"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    const/16 v2, 0x7c9

    invoke-static {p1, v0, v2, v1}, Lb/u/a;->s0(Lb/b/k/h;Ljava/lang/Class;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
