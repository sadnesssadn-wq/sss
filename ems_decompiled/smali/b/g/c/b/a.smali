.class public final synthetic Lb/g/c/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lb/g/c/b/v;

.field public final synthetic d:[Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lb/g/c/b/v;[Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/g/c/b/a;->c:Lb/g/c/b/v;

    iput-object p2, p0, Lb/g/c/b/a;->d:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lb/g/c/b/a;->c:Lb/g/c/b/v;

    iget-object v1, p0, Lb/g/c/b/a;->d:[Landroid/view/View;

    .line 1
    iget v2, v0, Lb/g/c/b/v;->p:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    array-length v2, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    aget-object v6, v1, v5

    iget v7, v0, Lb/g/c/b/v;->p:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget v2, v0, Lb/g/c/b/v;->q:I

    if-eq v2, v3, :cond_1

    array-length v2, v1

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v3, v1, v4

    iget v5, v0, Lb/g/c/b/v;->q:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
