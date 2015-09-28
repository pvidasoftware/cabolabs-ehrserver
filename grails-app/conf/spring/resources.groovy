// Place your Spring DSL code here
import com.cabolabs.security.AuthFilter
import com.cabolabs.security.AuthProvider
beans = {

   authProvider(AuthProvider) {
      passwordEncoder = ref("passwordEncoder") // from plugin
   }

   authFilter(AuthFilter) {
      // properties
      // http://www.oodlestechnologies.com/blogs/Adding-Custom-Spring-Security-Authentication
      authenticationManager = ref("authenticationManager")
      authProvider = ref("authProvider")
      rememberMeServices = ref("rememberMeServices") // from plugin
   }
   
   
}
