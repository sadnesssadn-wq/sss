.class public Lb/i/j/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lb/i/j/j$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lb/i/j/e;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lb/i/j/e;I)V
    .locals 0

    iput-object p1, p0, Lb/i/j/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lb/i/j/h;->b:Landroid/content/Context;

    iput-object p3, p0, Lb/i/j/h;->c:Lb/i/j/e;

    iput p4, p0, Lb/i/j/h;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lb/i/j/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lb/i/j/h;->b:Landroid/content/Context;

    iget-object v2, p0, Lb/i/j/h;->c:Lb/i/j/e;

    iget v3, p0, Lb/i/j/h;->d:I

    invoke-static {v0, v1, v2, v3}, Lb/i/j/j;->a(Ljava/lang/String;Landroid/content/Context;Lb/i/j/e;I)Lb/i/j/j$a;

    move-result-object v0

    return-object v0
.end method
