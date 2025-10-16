.class public Lc/d/a/b/e/m/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/e/m/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lc/d/a/b/e/m/a$d;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "TO;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lc/d/a/b/e/m/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final d:Lc/d/a/b/e/m/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field public final e:Lc/d/a/b/e/m/m/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/m/b<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final f:Landroid/os/Looper;

.field public final g:I

.field public final h:Lc/d/a/b/e/m/e;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field public final i:Lc/d/a/b/e/m/m/a;

.field public final j:Lc/d/a/b/e/m/m/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/d/a/b/e/m/a;Lc/d/a/b/e/m/a$d;Lc/d/a/b/e/m/d$a;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lc/d/a/b/e/m/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lc/d/a/b/e/m/a$d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lc/d/a/b/e/m/d$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/d/a/b/e/m/a<",
            "TO;>;TO;",
            "Lc/d/a/b/e/m/d$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p4, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e/m/d;->a:Landroid/content/Context;

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 2
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "REL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    :cond_2
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x52

    if-lt v1, v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    :goto_2
    const/4 v2, 0x0

    goto :goto_6

    :cond_4
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    :try_start_0
    const-string v0, "google"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "RPP1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "RPP2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x602711

    if-lt v0, v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->f:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->f:Ljava/lang/Boolean;

    :goto_4
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "PlatformVersion"

    const-string v1, "Build version must be at least 6301457 to support R in gmscore"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->f:Ljava/lang/Boolean;

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_6
    if-eqz v2, :cond_8

    .line 3
    :try_start_1
    const-class v0, Landroid/content/Context;

    const-string v1, "getAttributionTag"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    :cond_8
    const/4 p1, 0x0

    .line 4
    :goto_7
    iput-object p1, p0, Lc/d/a/b/e/m/d;->b:Ljava/lang/String;

    iput-object p2, p0, Lc/d/a/b/e/m/d;->c:Lc/d/a/b/e/m/a;

    iput-object p3, p0, Lc/d/a/b/e/m/d;->d:Lc/d/a/b/e/m/a$d;

    iget-object v0, p4, Lc/d/a/b/e/m/d$a;->b:Landroid/os/Looper;

    iput-object v0, p0, Lc/d/a/b/e/m/d;->f:Landroid/os/Looper;

    .line 5
    new-instance v0, Lc/d/a/b/e/m/m/b;

    invoke-direct {v0, p2, p3, p1}, Lc/d/a/b/e/m/m/b;-><init>(Lc/d/a/b/e/m/a;Lc/d/a/b/e/m/a$d;Ljava/lang/String;)V

    .line 6
    iput-object v0, p0, Lc/d/a/b/e/m/d;->e:Lc/d/a/b/e/m/m/b;

    new-instance p1, Lc/d/a/b/e/m/m/b1;

    invoke-direct {p1, p0}, Lc/d/a/b/e/m/m/b1;-><init>(Lc/d/a/b/e/m/d;)V

    iput-object p1, p0, Lc/d/a/b/e/m/d;->h:Lc/d/a/b/e/m/e;

    iget-object p1, p0, Lc/d/a/b/e/m/d;->a:Landroid/content/Context;

    invoke-static {p1}, Lc/d/a/b/e/m/m/g;->a(Landroid/content/Context;)Lc/d/a/b/e/m/m/g;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/b/e/m/d;->j:Lc/d/a/b/e/m/m/g;

    .line 7
    iget-object p2, p1, Lc/d/a/b/e/m/m/g;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    .line 8
    iput p2, p0, Lc/d/a/b/e/m/d;->g:I

    iget-object p2, p4, Lc/d/a/b/e/m/d$a;->a:Lc/d/a/b/e/m/m/a;

    iput-object p2, p0, Lc/d/a/b/e/m/d;->i:Lc/d/a/b/e/m/m/a;

    .line 9
    iget-object p1, p1, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc/d/a/b/e/m/a;Lc/d/a/b/e/m/a$d;Lc/d/a/b/e/m/m/a;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lc/d/a/b/e/m/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lc/d/a/b/e/m/a$d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lc/d/a/b/e/m/m/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/d/a/b/e/m/a<",
            "TO;>;TO;",
            "Lc/d/a/b/e/m/m/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "StatusExceptionMapper must not be null."

    .line 10
    invoke-static {p4, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lc/d/a/b/e/m/d$a;

    const/4 v2, 0x0

    invoke-direct {v1, p4, v2, v0}, Lc/d/a/b/e/m/d$a;-><init>(Lc/d/a/b/e/m/m/a;Landroid/accounts/Account;Landroid/os/Looper;)V

    .line 12
    invoke-direct {p0, p1, p2, p3, v1}, Lc/d/a/b/e/m/d;-><init>(Landroid/content/Context;Lc/d/a/b/e/m/a;Lc/d/a/b/e/m/a$d;Lc/d/a/b/e/m/d$a;)V

    return-void
.end method


# virtual methods
.method public a()Lc/d/a/b/e/p/d$a;
    .locals 4
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Lc/d/a/b/e/p/d$a;

    invoke-direct {v0}, Lc/d/a/b/e/p/d$a;-><init>()V

    iget-object v1, p0, Lc/d/a/b/e/m/d;->d:Lc/d/a/b/e/m/a$d;

    instance-of v2, v1, Lc/d/a/b/e/m/a$d$b;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lc/d/a/b/e/m/a$d$b;

    invoke-interface {v1}, Lc/d/a/b/e/m/a$d$b;->u()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->f:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/accounts/Account;

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->f:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-direct {v2, v1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_0

    .line 2
    :cond_1
    iget-object v1, p0, Lc/d/a/b/e/m/d;->d:Lc/d/a/b/e/m/a$d;

    instance-of v2, v1, Lc/d/a/b/e/m/a$d$a;

    if-eqz v2, :cond_2

    check-cast v1, Lc/d/a/b/e/m/a$d$a;

    invoke-interface {v1}, Lc/d/a/b/e/m/a$d$a;->c()Landroid/accounts/Account;

    move-result-object v3

    .line 3
    :cond_2
    :goto_0
    iput-object v3, v0, Lc/d/a/b/e/p/d$a;->a:Landroid/accounts/Account;

    .line 4
    iget-object v1, p0, Lc/d/a/b/e/m/d;->d:Lc/d/a/b/e/m/a$d;

    instance-of v2, v1, Lc/d/a/b/e/m/a$d$b;

    if-eqz v2, :cond_3

    check-cast v1, Lc/d/a/b/e/m/a$d$b;

    invoke-interface {v1}, Lc/d/a/b/e/m/a$d$b;->u()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->v()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 5
    :goto_1
    iget-object v2, v0, Lc/d/a/b/e/p/d$a;->b:Lb/f/c;

    if-nez v2, :cond_4

    new-instance v2, Lb/f/c;

    const/4 v3, 0x0

    .line 6
    invoke-direct {v2, v3}, Lb/f/c;-><init>(I)V

    .line 7
    iput-object v2, v0, Lc/d/a/b/e/p/d$a;->b:Lb/f/c;

    :cond_4
    iget-object v2, v0, Lc/d/a/b/e/p/d$a;->b:Lb/f/c;

    invoke-virtual {v2, v1}, Lb/f/c;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object v1, p0, Lc/d/a/b/e/m/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 9
    iput-object v1, v0, Lc/d/a/b/e/p/d$a;->d:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lc/d/a/b/e/m/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 11
    iput-object v1, v0, Lc/d/a/b/e/p/d$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(ILc/d/a/b/e/m/m/d;)Lc/d/a/b/e/m/m/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lc/d/a/b/e/m/a$b;",
            "T:",
            "Lc/d/a/b/e/m/m/d<",
            "+",
            "Lc/d/a/b/e/m/j;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->i()V

    iget-object v0, p0, Lc/d/a/b/e/m/d;->j:Lc/d/a/b/e/m/m/g;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lc/d/a/b/e/m/m/w1;

    invoke-direct {v1, p1, p2}, Lc/d/a/b/e/m/m/w1;-><init>(ILc/d/a/b/e/m/m/d;)V

    iget-object p1, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    new-instance v2, Lc/d/a/b/e/m/m/h1;

    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {v2, v1, v0, p0}, Lc/d/a/b/e/m/m/h1;-><init>(Lc/d/a/b/e/m/m/p0;ILc/d/a/b/e/m/d;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object p2
.end method

.method public final c(ILc/d/a/b/e/m/m/r;)Lc/d/a/b/p/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lc/d/a/b/e/m/a$b;",
            ">(I",
            "Lc/d/a/b/e/m/m/r<",
            "TA;TTResult;>;)",
            "Lc/d/a/b/p/l<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lc/d/a/b/p/m;

    invoke-direct {v0}, Lc/d/a/b/p/m;-><init>()V

    iget-object v1, p0, Lc/d/a/b/e/m/d;->j:Lc/d/a/b/e/m/m/g;

    iget-object v2, p0, Lc/d/a/b/e/m/d;->i:Lc/d/a/b/e/m/m/a;

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v3, p2, Lc/d/a/b/e/m/m/r;->c:I

    .line 3
    invoke-virtual {v1, v0, v3, p0}, Lc/d/a/b/e/m/m/g;->b(Lc/d/a/b/p/m;ILc/d/a/b/e/m/d;)V

    new-instance v3, Lc/d/a/b/e/m/m/y1;

    invoke-direct {v3, p1, p2, v0, v2}, Lc/d/a/b/e/m/m/y1;-><init>(ILc/d/a/b/e/m/m/r;Lc/d/a/b/p/m;Lc/d/a/b/e/m/m/a;)V

    iget-object p1, v1, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    const/4 p2, 0x4

    new-instance v2, Lc/d/a/b/e/m/m/h1;

    iget-object v1, v1, Lc/d/a/b/e/m/m/g;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {v2, v3, v1, p0}, Lc/d/a/b/e/m/m/h1;-><init>(Lc/d/a/b/e/m/m/p0;ILc/d/a/b/e/m/d;)V

    invoke-virtual {p1, p2, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4
    iget-object p1, v0, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    return-object p1
.end method
