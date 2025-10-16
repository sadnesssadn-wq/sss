.class public Lb/m/d/y$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/m/d/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lb/m/d/y;


# direct methods
.method public constructor <init>(Lb/m/d/y;)V
    .locals 0

    iput-object p1, p0, Lb/m/d/y$g;->c:Lb/m/d/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/m/d/y$g;->c:Lb/m/d/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/m/d/y;->C(Z)Z

    return-void
.end method
