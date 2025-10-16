.class public Lb/l/a/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/l/a/a$c;,
        Lb/l/a/a$d;,
        Lb/l/a/a$a;,
        Lb/l/a/a$b;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lb/l/a/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lb/f/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/h<",
            "Lb/l/a/a$b;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/l/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lb/l/a/a$a;

.field public d:Lb/l/a/a$c;

.field public e:J

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lb/l/a/a;->g:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/f/h;

    invoke-direct {v0}, Lb/f/h;-><init>()V

    iput-object v0, p0, Lb/l/a/a;->a:Lb/f/h;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/l/a/a;->b:Ljava/util/ArrayList;

    new-instance v0, Lb/l/a/a$a;

    invoke-direct {v0, p0}, Lb/l/a/a$a;-><init>(Lb/l/a/a;)V

    iput-object v0, p0, Lb/l/a/a;->c:Lb/l/a/a$a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lb/l/a/a;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/l/a/a;->f:Z

    return-void
.end method

.method public static a()Lb/l/a/a;
    .locals 2

    sget-object v0, Lb/l/a/a;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lb/l/a/a;

    invoke-direct {v1}, Lb/l/a/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/l/a/a;

    return-object v0
.end method
