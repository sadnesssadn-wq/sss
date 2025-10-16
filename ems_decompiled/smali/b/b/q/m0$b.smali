.class public Lb/b/q/m0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/q/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lb/b/q/m0;


# direct methods
.method public constructor <init>(Lb/b/q/m0;)V
    .locals 0

    iput-object p1, p0, Lb/b/q/m0$b;->c:Lb/b/q/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lb/b/q/m0$b;->c:Lb/b/q/m0;

    invoke-virtual {v0}, Lb/b/q/m0;->b()V

    return-void
.end method
