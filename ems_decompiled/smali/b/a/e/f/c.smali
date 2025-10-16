.class public final Lb/a/e/f/c;
.super Lb/a/e/f/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/e/f/a<",
        "Landroid/content/Intent;",
        "Lb/a/e/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/e/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    check-cast p2, Landroid/content/Intent;

    return-object p2
.end method

.method public c(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lb/a/e/a;

    invoke-direct {v0, p1, p2}, Lb/a/e/a;-><init>(ILandroid/content/Intent;)V

    return-object v0
.end method
