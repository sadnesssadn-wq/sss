.class public Lb/i/j/o$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/j/o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lb/i/l/a;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb/i/j/o;Lb/i/l/a;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lb/i/j/o$a;->c:Lb/i/l/a;

    iput-object p3, p0, Lb/i/j/o$a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/i/j/o$a;->c:Lb/i/l/a;

    iget-object v1, p0, Lb/i/j/o$a;->d:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lb/i/l/a;->a(Ljava/lang/Object;)V

    return-void
.end method
