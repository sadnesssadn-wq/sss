.class public final synthetic Lc/b/r/a/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/m;


# instance fields
.field public final synthetic a:Lc/b/r/a/n0;


# direct methods
.method public synthetic constructor <init>(Lc/b/r/a/n0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/r/a/q;->a:Lc/b/r/a/n0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lc/b/r/a/q;->a:Lc/b/r/a/n0;

    .line 1
    iget-object v0, v0, Lc/b/r/a/n0;->a:Lcom/emsportal/international/activity/RouteDeliveredInternationalParcelActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
