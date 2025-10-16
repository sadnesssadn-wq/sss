.class public abstract Lb/l/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/l/a/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/l/a/b$k;,
        Lb/l/a/b$j;,
        Lb/l/a/b$i;,
        Lb/l/a/b$l;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lb/l/a/b<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lb/l/a/a$b;"
    }
.end annotation


# static fields
.field public static final l:Lb/l/a/b$l;

.field public static final m:Lb/l/a/b$l;

.field public static final n:Lb/l/a/b$l;

.field public static final o:Lb/l/a/b$l;

.field public static final p:Lb/l/a/b$l;

.field public static final q:Lb/l/a/b$l;

.field public static final r:Lb/l/a/b$l;


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Lb/l/a/c;

.field public f:Z

.field public g:F

.field public h:J

.field public i:F

.field public final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/l/a/b$j;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/l/a/b$k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/l/a/b$c;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Lb/l/a/b$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/l/a/b;->l:Lb/l/a/b$l;

    new-instance v0, Lb/l/a/b$d;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lb/l/a/b$d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/l/a/b;->m:Lb/l/a/b$l;

    new-instance v0, Lb/l/a/b$e;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lb/l/a/b$e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/l/a/b;->n:Lb/l/a/b$l;

    new-instance v0, Lb/l/a/b$f;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Lb/l/a/b$f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/l/a/b;->o:Lb/l/a/b$l;

    new-instance v0, Lb/l/a/b$g;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Lb/l/a/b$g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/l/a/b;->p:Lb/l/a/b$l;

    new-instance v0, Lb/l/a/b$h;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Lb/l/a/b$h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/l/a/b;->q:Lb/l/a/b$l;

    new-instance v0, Lb/l/a/b$a;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lb/l/a/b$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/l/a/b;->r:Lb/l/a/b$l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lb/l/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lb/l/a/c<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/l/a/b;->a:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lb/l/a/b;->b:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/l/a/b;->c:Z

    iput-boolean v0, p0, Lb/l/a/b;->f:Z

    const v0, -0x800001

    iput v0, p0, Lb/l/a/b;->g:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lb/l/a/b;->h:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/l/a/b;->j:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/l/a/b;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Lb/l/a/b;->d:Ljava/lang/Object;

    iput-object p2, p0, Lb/l/a/b;->e:Lb/l/a/c;

    sget-object p1, Lb/l/a/b;->o:Lb/l/a/b$l;

    if-eq p2, p1, :cond_4

    sget-object p1, Lb/l/a/b;->p:Lb/l/a/b$l;

    if-eq p2, p1, :cond_4

    sget-object p1, Lb/l/a/b;->q:Lb/l/a/b$l;

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lb/l/a/b;->r:Lb/l/a/b$l;

    const/high16 v0, 0x3b800000    # 0.00390625f

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lb/l/a/b;->m:Lb/l/a/b$l;

    if-eq p2, p1, :cond_3

    sget-object p1, Lb/l/a/b;->n:Lb/l/a/b$l;

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    :goto_0
    iput v0, p0, Lb/l/a/b;->i:F

    goto :goto_3

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    :goto_2
    iput p1, p0, Lb/l/a/b;->i:F

    :goto_3
    return-void
.end method

.method public static d(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-wide v3, v0, Lb/l/a/b;->h:J

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-nez v8, :cond_0

    iput-wide v1, v0, Lb/l/a/b;->h:J

    iget v1, v0, Lb/l/a/b;->b:F

    invoke-virtual {v0, v1}, Lb/l/a/b;->e(F)V

    return v5

    :cond_0
    sub-long v3, v1, v3

    iput-wide v1, v0, Lb/l/a/b;->h:J

    move-object v1, v0

    check-cast v1, Lb/l/a/d;

    const/4 v2, 0x0

    .line 1
    iget v6, v1, Lb/l/a/d;->t:F

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v6, v6, v7

    iget-object v8, v1, Lb/l/a/d;->s:Lb/l/a/e;

    if-eqz v6, :cond_1

    .line 2
    iget-wide v9, v8, Lb/l/a/e;->i:D

    .line 3
    iget v6, v1, Lb/l/a/b;->b:F

    float-to-double v9, v6

    iget v6, v1, Lb/l/a/b;->a:F

    float-to-double v11, v6

    const-wide/16 v13, 0x2

    div-long/2addr v3, v13

    move-wide v13, v3

    invoke-virtual/range {v8 .. v14}, Lb/l/a/e;->c(DDJ)Lb/l/a/b$i;

    move-result-object v6

    iget-object v8, v1, Lb/l/a/d;->s:Lb/l/a/e;

    iget v9, v1, Lb/l/a/d;->t:F

    float-to-double v9, v9

    .line 4
    iput-wide v9, v8, Lb/l/a/e;->i:D

    .line 5
    iput v7, v1, Lb/l/a/d;->t:F

    iget v9, v6, Lb/l/a/b$i;->a:F

    float-to-double v9, v9

    iget v6, v6, Lb/l/a/b$i;->b:F

    goto :goto_0

    :cond_1
    iget v6, v1, Lb/l/a/b;->b:F

    float-to-double v9, v6

    iget v6, v1, Lb/l/a/b;->a:F

    :goto_0
    float-to-double v11, v6

    move-wide/from16 v18, v3

    move-object v13, v8

    move-wide v14, v9

    move-wide/from16 v16, v11

    invoke-virtual/range {v13 .. v19}, Lb/l/a/e;->c(DDJ)Lb/l/a/b$i;

    move-result-object v3

    iget v4, v3, Lb/l/a/b$i;->a:F

    iput v4, v1, Lb/l/a/b;->b:F

    iget v3, v3, Lb/l/a/b$i;->b:F

    iput v3, v1, Lb/l/a/b;->a:F

    iget v3, v1, Lb/l/a/b;->g:F

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v1, Lb/l/a/b;->b:F

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v1, Lb/l/a/b;->b:F

    iget v4, v1, Lb/l/a/b;->a:F

    .line 6
    iget-object v6, v1, Lb/l/a/d;->s:Lb/l/a/e;

    .line 7
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v8, v4

    iget-wide v10, v6, Lb/l/a/e;->e:D

    const/4 v4, 0x1

    cmpg-double v12, v8, v10

    if-gez v12, :cond_2

    .line 8
    iget-wide v8, v6, Lb/l/a/e;->i:D

    double-to-float v8, v8

    sub-float/2addr v3, v8

    .line 9
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v8, v3

    iget-wide v10, v6, Lb/l/a/e;->d:D

    cmpg-double v3, v8, v10

    if-gez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 10
    iget-object v3, v1, Lb/l/a/d;->s:Lb/l/a/e;

    .line 11
    iget-wide v8, v3, Lb/l/a/e;->i:D

    double-to-float v3, v8

    .line 12
    iput v3, v1, Lb/l/a/b;->b:F

    iput v2, v1, Lb/l/a/b;->a:F

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 13
    :goto_2
    iget v1, v0, Lb/l/a/b;->b:F

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lb/l/a/b;->b:F

    iget v2, v0, Lb/l/a/b;->g:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lb/l/a/b;->b:F

    invoke-virtual {v0, v1}, Lb/l/a/b;->e(F)V

    if-eqz v4, :cond_4

    invoke-virtual {v0, v5}, Lb/l/a/b;->c(Z)V

    :cond_4
    return v4
.end method

.method public b()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lb/l/a/b;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/l/a/b;->c(Z)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be canceled on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Z)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/l/a/b;->f:Z

    invoke-static {}, Lb/l/a/a;->a()Lb/l/a/a;

    move-result-object v1

    .line 1
    iget-object v2, v1, Lb/l/a/a;->a:Lb/f/h;

    invoke-virtual {v2, p0}, Lb/f/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lb/l/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v3, v1, Lb/l/a/a;->b:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lb/l/a/a;->f:Z

    :cond_0
    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, p0, Lb/l/a/b;->h:J

    iput-boolean v0, p0, Lb/l/a/b;->c:Z

    :goto_0
    iget-object v1, p0, Lb/l/a/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lb/l/a/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/l/a/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/l/a/b$j;

    iget v2, p0, Lb/l/a/b;->b:F

    iget v3, p0, Lb/l/a/b;->a:F

    invoke-interface {v1, p0, p1, v2, v3}, Lb/l/a/b$j;->a(Lb/l/a/b;ZFF)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lb/l/a/b;->j:Ljava/util/ArrayList;

    invoke-static {p1}, Lb/l/a/b;->d(Ljava/util/ArrayList;)V

    return-void
.end method

.method public e(F)V
    .locals 3

    iget-object v0, p0, Lb/l/a/b;->e:Lb/l/a/c;

    iget-object v1, p0, Lb/l/a/b;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lb/l/a/c;->b(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lb/l/a/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lb/l/a/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/l/a/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/l/a/b$k;

    iget v1, p0, Lb/l/a/b;->b:F

    iget v2, p0, Lb/l/a/b;->a:F

    invoke-interface {v0, p0, v1, v2}, Lb/l/a/b$k;->a(Lb/l/a/b;FF)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lb/l/a/b;->k:Ljava/util/ArrayList;

    invoke-static {p1}, Lb/l/a/b;->d(Ljava/util/ArrayList;)V

    return-void
.end method
