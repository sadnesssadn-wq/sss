.class public Lb/b/k/k$h$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/k/k$h;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/k/k$h;


# direct methods
.method public constructor <init>(Lb/b/k/k$h;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/k$h$a;->a:Lb/b/k/k$h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lb/b/k/k$h$a;->a:Lb/b/k/k$h;

    invoke-virtual {p1}, Lb/b/k/k$h;->d()V

    return-void
.end method
