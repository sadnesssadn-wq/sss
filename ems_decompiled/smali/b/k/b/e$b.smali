.class public Lb/k/b/e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lb/k/b/e;


# direct methods
.method public constructor <init>(Lb/k/b/e;)V
    .locals 0

    iput-object p1, p0, Lb/k/b/e$b;->c:Lb/k/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/k/b/e$b;->c:Lb/k/b/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/k/b/e;->w(I)V

    return-void
.end method
