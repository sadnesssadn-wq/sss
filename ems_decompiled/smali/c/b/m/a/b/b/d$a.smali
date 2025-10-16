.class public Lc/b/m/a/b/b/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/m/a/b/b/d;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/m/a/b/b/d;


# direct methods
.method public constructor <init>(Lc/b/m/a/b/b/d;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/a/b/b/d$a;->a:Lc/b/m/a/b/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lc/b/m/a/b/b/d$a;->a:Lc/b/m/a/b/b/d;

    iget-object v0, v0, Lc/b/m/a/b/b/d;->a:Lcom/emsportal/express/activity/parcel/detail/RoutePackageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
