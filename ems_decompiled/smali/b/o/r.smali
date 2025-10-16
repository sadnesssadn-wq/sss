.class public Lb/o/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/o/j;


# static fields
.field public static final k:Lb/o/r;


# instance fields
.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Landroid/os/Handler;

.field public final h:Lb/o/k;

.field public i:Ljava/lang/Runnable;

.field public j:Lb/o/t$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/o/r;

    invoke-direct {v0}, Lb/o/r;-><init>()V

    sput-object v0, Lb/o/r;->k:Lb/o/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/o/r;->c:I

    iput v0, p0, Lb/o/r;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/o/r;->e:Z

    iput-boolean v0, p0, Lb/o/r;->f:Z

    new-instance v0, Lb/o/k;

    invoke-direct {v0, p0}, Lb/o/k;-><init>(Lb/o/j;)V

    iput-object v0, p0, Lb/o/r;->h:Lb/o/k;

    new-instance v0, Lb/o/r$a;

    invoke-direct {v0, p0}, Lb/o/r$a;-><init>(Lb/o/r;)V

    iput-object v0, p0, Lb/o/r;->i:Ljava/lang/Runnable;

    new-instance v0, Lb/o/r$b;

    invoke-direct {v0, p0}, Lb/o/r$b;-><init>(Lb/o/r;)V

    iput-object v0, p0, Lb/o/r;->j:Lb/o/t$a;

    return-void
.end method


# virtual methods
.method public getLifecycle()Lb/o/f;
    .locals 1

    iget-object v0, p0, Lb/o/r;->h:Lb/o/k;

    return-object v0
.end method
