.class public Lb/i/j/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/i/j/n$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/i/j/n;->a:Ljava/lang/String;

    iput p2, p0, Lb/i/j/n;->b:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    new-instance v0, Lb/i/j/n$a;

    iget-object v1, p0, Lb/i/j/n;->a:Ljava/lang/String;

    iget v2, p0, Lb/i/j/n;->b:I

    invoke-direct {v0, p1, v1, v2}, Lb/i/j/n$a;-><init>(Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-object v0
.end method
