.class public Lc/d/a/b/q/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/q/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/q/c$b;,
        Lc/d/a/b/q/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/d/a/b/q/a$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lc/d/a/b/q/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/q/c$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/q/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc/d/a/b/q/c;->b:Landroid/util/SparseArray;

    const/4 v0, 0x3

    iput v0, p0, Lc/d/a/b/q/c;->c:I

    return-void
.end method

.method public constructor <init>(Lc/d/a/b/q/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lc/d/a/b/q/c;->b:Landroid/util/SparseArray;

    const/4 p1, 0x3

    iput p1, p0, Lc/d/a/b/q/c;->c:I

    return-void
.end method


# virtual methods
.method public a(Lc/d/a/b/q/a$a;)V
    .locals 10
    .param p1    # Lc/d/a/b/q/a$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/q/a$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lc/d/a/b/q/a$a;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lc/d/a/b/q/c;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Lc/d/a/b/q/c$b;

    invoke-direct {v5, p0}, Lc/d/a/b/q/c$b;-><init>(Lc/d/a/b/q/c;)V

    iget-object v6, p0, Lc/d/a/b/q/c;->a:Lc/d/a/b/q/c$a;

    check-cast v6, Le/a/a/c;

    .line 3
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Lc/d/a/b/q/e/a;

    .line 4
    new-instance v7, Le/a/a/a;

    iget-object v8, v6, Le/a/a/c;->a:Linfo/androidhive/barcode/camera/GraphicOverlay;

    invoke-direct {v7, v8}, Le/a/a/a;-><init>(Linfo/androidhive/barcode/camera/GraphicOverlay;)V

    new-instance v8, Le/a/a/b;

    iget-object v9, v6, Le/a/a/c;->a:Linfo/androidhive/barcode/camera/GraphicOverlay;

    iget-object v6, v6, Le/a/a/c;->b:Le/a/a/b$a;

    invoke-direct {v8, v9, v7, v6}, Le/a/a/b;-><init>(Linfo/androidhive/barcode/camera/GraphicOverlay;Le/a/a/a;Le/a/a/b$a;)V

    .line 5
    iput-object v8, v5, Lc/d/a/b/q/c$b;->a:Lc/d/a/b/q/d;

    .line 6
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "barcode detected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lc/d/a/b/q/e/a;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", listener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v8, Le/a/a/b;->c:Le/a/a/b$a;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "XX"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v8, Le/a/a/b;->c:Le/a/a/b$a;

    if-eqz v6, :cond_0

    check-cast v6, Linfo/androidhive/barcode/BarcodeReader;

    .line 8
    iget-object v6, v6, Linfo/androidhive/barcode/BarcodeReader;->j:Linfo/androidhive/barcode/BarcodeReader$g;

    if-eqz v6, :cond_0

    invoke-interface {v6, v4}, Linfo/androidhive/barcode/BarcodeReader$g;->f(Lc/d/a/b/q/e/a;)V

    .line 9
    :cond_0
    iget-object v4, p0, Lc/d/a/b/q/c;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p1, Lc/d/a/b/q/a$a;->a:Landroid/util/SparseArray;

    .line 11
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lc/d/a/b/q/c;->b:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lc/d/a/b/q/c;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lc/d/a/b/q/c;->b:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/d/a/b/q/c$b;

    .line 12
    iget v7, v6, Lc/d/a/b/q/c$b;->b:I

    add-int/2addr v7, v5

    iput v7, v6, Lc/d/a/b/q/c$b;->b:I

    .line 13
    iget v5, p0, Lc/d/a/b/q/c;->c:I

    if-lt v7, v5, :cond_3

    .line 14
    iget-object v5, v6, Lc/d/a/b/q/c$b;->a:Lc/d/a/b/q/d;

    .line 15
    invoke-virtual {v5}, Lc/d/a/b/q/d;->a()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_3
    iget-object v4, v6, Lc/d/a/b/q/c$b;->a:Lc/d/a/b/q/d;

    .line 17
    check-cast v4, Le/a/a/b;

    .line 18
    iget-object v5, v4, Le/a/a/b;->a:Linfo/androidhive/barcode/camera/GraphicOverlay;

    iget-object v4, v4, Le/a/a/b;->b:Le/a/a/a;

    .line 19
    iget-object v6, v5, Linfo/androidhive/barcode/camera/GraphicOverlay;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, v5, Linfo/androidhive/barcode/camera/GraphicOverlay;->i:Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/view/View;->postInvalidate()V

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 20
    :cond_5
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lc/d/a/b/q/c;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_3

    .line 21
    :cond_6
    iget-object v0, p1, Lc/d/a/b/q/a$a;->a:Landroid/util/SparseArray;

    const/4 v2, 0x0

    .line 22
    :goto_4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Lc/d/a/b/q/c;->b:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/q/c$b;

    .line 23
    iput v1, v3, Lc/d/a/b/q/c$b;->b:I

    .line 24
    iget-object v3, v3, Lc/d/a/b/q/c$b;->a:Lc/d/a/b/q/d;

    .line 25
    check-cast v3, Le/a/a/b;

    .line 26
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Lc/d/a/b/q/e/a;

    .line 27
    iget-object v6, v3, Le/a/a/b;->a:Linfo/androidhive/barcode/camera/GraphicOverlay;

    iget-object v7, v3, Le/a/a/b;->b:Le/a/a/a;

    .line 28
    iget-object v8, v6, Linfo/androidhive/barcode/camera/GraphicOverlay;->c:Ljava/lang/Object;

    monitor-enter v8

    :try_start_2
    iget-object v9, v6, Linfo/androidhive/barcode/camera/GraphicOverlay;->i:Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v6}, Landroid/view/View;->postInvalidate()V

    .line 29
    iget-object v6, v3, Le/a/a/b;->b:Le/a/a/a;

    .line 30
    iput-object v4, v6, Le/a/a/a;->d:Lc/d/a/b/q/e/a;

    .line 31
    iget-object v4, v6, Linfo/androidhive/barcode/camera/GraphicOverlay$a;->a:Linfo/androidhive/barcode/camera/GraphicOverlay;

    invoke-virtual {v4}, Landroid/view/View;->postInvalidate()V

    .line 32
    iget-object v4, p1, Lc/d/a/b/q/a$a;->a:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-le v4, v5, :cond_9

    const-string v4, "XX"

    const-string v6, "Multiple items detected"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "XX"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v7, p1, Lc/d/a/b/q/a$a;->a:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v3, Le/a/a/b;->c:Le/a/a/b$a;

    if-eqz v4, :cond_9

    .line 36
    iget-object v4, p1, Lc/d/a/b/q/a$a;->a:Landroid/util/SparseArray;

    if-nez v4, :cond_7

    const/4 v4, 0x0

    goto :goto_6

    .line 37
    :cond_7
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    move-object v4, v6

    .line 38
    :goto_6
    iget-object v3, v3, Le/a/a/b;->c:Le/a/a/b$a;

    check-cast v3, Linfo/androidhive/barcode/BarcodeReader;

    .line 39
    iget-object v3, v3, Linfo/androidhive/barcode/BarcodeReader;->j:Linfo/androidhive/barcode/BarcodeReader$g;

    if-eqz v3, :cond_9

    invoke-interface {v3, v4}, Linfo/androidhive/barcode/BarcodeReader$g;->d(Ljava/util/List;)V

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :catchall_1
    move-exception p1

    .line 40
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_a
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lc/d/a/b/q/c;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lc/d/a/b/q/c;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/q/c$b;

    .line 1
    iget-object v1, v1, Lc/d/a/b/q/c$b;->a:Lc/d/a/b/q/d;

    .line 2
    invoke-virtual {v1}, Lc/d/a/b/q/d;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/a/b/q/c;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
