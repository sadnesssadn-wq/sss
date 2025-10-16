.class public final synthetic Lc/b/m/a/b/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/m;


# instance fields
.field public final synthetic a:Lc/b/m/a/b/b/c;


# direct methods
.method public synthetic constructor <init>(Lc/b/m/a/b/b/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/m/a/b/b/a;->a:Lc/b/m/a/b/b/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lc/b/m/a/b/b/a;->a:Lc/b/m/a/b/b/c;

    .line 1
    iget-object v0, v0, Lc/b/m/a/b/b/c;->a:Lcom/emsportal/express/activity/parcel/detail/RouteDeliveredPackageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
