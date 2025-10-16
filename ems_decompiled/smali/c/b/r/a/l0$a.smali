.class public Lc/b/r/a/l0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/r/a/l0;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/r/a/l0;


# direct methods
.method public constructor <init>(Lc/b/r/a/l0;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/a/l0$a;->a:Lc/b/r/a/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lc/b/r/a/l0$a;->a:Lc/b/r/a/l0;

    iget-object v0, v0, Lc/b/r/a/l0;->a:Lcom/emsportal/international/activity/DetailInternationalParcelActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
