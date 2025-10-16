.class public final Lc/d/d/f;
.super Lc/d/d/m;
.source ""


# static fields
.field public static final e:Lc/d/d/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/d/f;

    invoke-direct {v0}, Lc/d/d/f;-><init>()V

    sput-object v0, Lc/d/d/f;->e:Lc/d/d/f;

    sget-object v1, Lc/d/d/m;->d:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/d/d/m;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/d/d/m;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a()Lc/d/d/f;
    .locals 1

    sget-boolean v0, Lc/d/d/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lc/d/d/f;

    invoke-direct {v0}, Lc/d/d/f;-><init>()V

    return-object v0

    :cond_0
    sget-object v0, Lc/d/d/f;->e:Lc/d/d/f;

    return-object v0
.end method
