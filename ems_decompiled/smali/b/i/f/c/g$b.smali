.class public Lb/i/f/c/g$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/f/c/g;->a(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lb/i/f/c/g;


# direct methods
.method public constructor <init>(Lb/i/f/c/g;I)V
    .locals 0

    iput-object p1, p0, Lb/i/f/c/g$b;->d:Lb/i/f/c/g;

    iput p2, p0, Lb/i/f/c/g$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/i/f/c/g$b;->d:Lb/i/f/c/g;

    iget v1, p0, Lb/i/f/c/g$b;->c:I

    invoke-virtual {v0, v1}, Lb/i/f/c/g;->d(I)V

    return-void
.end method
